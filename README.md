# Sessões, buscas e navegação na wikimedia

Este repo é a semente para uma análise de padrões de busca e navegação em páginas de projetos da wikimedia (provavelmente wikipedia).

O [exercício original de análise](https://github.com/wikimedia-research/Discovery-Hiring-Analyst-2016) é um problema proposto pela Wikimedia "for candidates applying to be a Data Analyst in the Discovery department at Wikimedia Foundation." O README do projeto original descreve as análises pedidas aos interessados na posição.

## Organização

`code`: código para importar + transformar dados para análise, código de funções úteis em mais de um ponto.

`data`: dados criados para essa análise.

`reports`: notebooks das análises.

## O relatório

Este relatório foi desenvolvido com o intuito de corresponder aos objetivos expostos na tarefa original. Sua versão final está publicada em <http://rpubs.com/tiago_clementino/384699>.

## Os dados

O script `code/import-events_to_searches.R` é usado para tratar os dados de modo a criar e lapidar variável que tornaram as tarefas mais fáceis. Executar este script gera o arquivo `data/search_data.csv`. O script `import-events_to_searches.R` em si é a melhor documentação do que significa cada coluna em `data/search_data.csv`.

## Dependências

R através da IDE RStudio, com os pacotes `tidyverse`, `prettydoc`, `lubridate` e `here`.
