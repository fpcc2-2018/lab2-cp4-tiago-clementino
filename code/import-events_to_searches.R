library(tidyverse)
library(lubridate)
library(here)

message("Lendo dados brutos de eventos")

events = read_csv("https://github.com/wikimedia-research/Discovery-Hiring-Analyst-2016/raw/master/events_log.csv.gz")

# events = events %>% slice(1:5e4) # Útil para testar código em dados pequenos. Comente na hora de processá-los para valer.

message("Transformando em dados por busca")

events = events %>% 
    group_by(session_id) %>% 
    arrange(timestamp) %>% 
    mutate(search_index = cumsum(action == "searchResultPage")) # contador para as buscas nessa sessão.



searches = events %>% 
    group_by(session_id) %>% 
    arrange(timestamp) %>% 
    mutate(
        session_start_timestamp = first(timestamp),
        session_start_date =  as.Date(ymd_hms(first(timestamp)),"%Y%m%d%H%M%S"),
        session_legth = ymd_hms(first(timestamp)) %--% ymd_hms(last(timestamp)),
        last_search = last(search_index)
        #session_length = difftime(last(timestamp),first(timestamp),units="seconds")
    )

searches = searches %>% 
    group_by(session_id, search_index) %>% 
    arrange(timestamp) %>% 
    summarise(
        session_start_timestamp = first(session_start_timestamp),
        # session_start_date = first(session_start_date),
        day = round_date(first(session_start_date), unit = "day"),
        session_legth = first(session_legth),
        last_search = last(last_search),
        group = first(group), # eventos de uma mesma sessão são de um mesmo grupo
        results = max(n_results, na.rm = TRUE), # se não houver busca, retorna -Inf
        num_clicks = sum(action == "visitPage"), 
        first_click = ifelse(num_clicks == 0, 
                             NA_integer_, 
                             first(na.omit(result_position))
        )
    ) %>% 
    filter(last_search > 0) # Apenas search sessions




out_file = here("data/search_data.csv")

message("Salvando em ", out_file)

searches %>% 
    write_csv(out_file)
