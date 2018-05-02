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

## Procedimento para Replicação do Relatório

1. Configure o ambiente conforme descrito acima em "Dependências".
2. Clone este repositório. 
3. inicie a IDE RStudio.
4. Abra o projeto ".\exercicio-wikimedia.Rproj".
3. Abra o arquivo ".\dados\import-events_to_searches.R". Em seguida clique em "Run" (canto superior direito do editor). Isto pode levar algum tempo (é necessário ter conexão com a Internet).
4. Abra o arquivo ".\reports\lab-2-checkpoint-4.2.Rmd". Clique em "Knit" (canto superior esquerdo do editor). Dentre as opções apresentadas, selecione "knit to html_pretty".
5. O resultado será exibido e estará disponível em ".\reports\lab-2-checkpoint-4.2.html".