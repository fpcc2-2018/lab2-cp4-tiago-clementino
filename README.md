# FPCC1 - Laboratório 2 - Checkpoint 4

## Sessões, Buscas e Navegação [Wikimedia Foundation]

Este repositório traz uma análise de padrões de busca e navegação em páginas da wikimedia (provavelmente wikipedia). Este objetivo foi proposto como exerício prático número 2.4 da disciplina FPCC1, no curso de [pós-graduação em Ciência da Computação](http://www.computacao.ufcg.edu.br/pos-graduacao) da [UFCG](http://www.ufcg.edu.br).

Foi seguido o [exercício original de análise](https://github.com/wikimedia-research/Discovery-Hiring-Analyst-2016), um problema proposto pela Wikimedia "for candidates applying to be a Data Analyst in the Discovery department at Wikimedia Foundation." O README do projeto original descreve as análises pedidas aos interessados na posição.

## Organização

`code`: código para importar e transformar dados para análise, além de possíveis funções úteis em mais de um ponto.

`data`: dados criados para essa análise.

`reports`: notebooks das análises.

## Relatório

Este relatório foi desenvolvido com o intuito de corresponder aos objetivos expostos na tarefa original. Sua versão final está publicada [aqui](http://rpubs.com/tiago_clementino/384699).

## Os dados

O script `code/import-events_to_searches.R` é usado para tratar os dados de modo a criar ou transformar variáveis que tornaram as tarefas mais fáceis. Executar este script gera o arquivo `data/search_data.csv`. O script `import-events_to_searches.R` em si é a melhor documentação do que significa cada coluna em `data/search_data.csv`.

## Dependências

O relatório que descreve esta tarefa foi compilado no seguinte ambiente:

- [Microsoft Windows 10](https://www.microsoft.com/pt-br/software-download/windows10)
- [R 3.5.0](https://www.r-project.org/)
- [RStudio Desktop 1.1.477](https://www.rstudio.com/products/rstudio/download/)

Na IDE do RStudio, instale os seguintes pacotes:

- `tidyverse`
- `prettydoc`
- `lubridate`
- `here`
