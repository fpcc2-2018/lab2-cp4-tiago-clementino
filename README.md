# FPCC2: Laboratórios

## Sessões, Buscas e Navegação [Wikimedia Foundation]

Este repositório traz uma análise de padrões de busca e navegação em páginas da wikimedia (provavelmente wikipedia). Este objetivo foi proposto para exerícios práticos da disciplina FPCC02, no curso de [pós-graduação em Ciência da Computação](http://www.computacao.ufcg.edu.br/pos-graduacao) da [UFCG](http://www.ufcg.edu.br).

Seguindo o [exercício original de análise](https://github.com/wikimedia-research/Discovery-Hiring-Analyst-2016), que trata de um problema proposto pela Wikimedia "for candidates applying to be a Data Analyst in the Discovery department at Wikimedia Foundation." O README do projeto original descreve as análises pedidas aos interessados na posição.

## Organização

`code`: código para importar e transformar dados para análise, além de possíveis funções úteis em mais de um ponto.

`data`: dados criados para essa análise.

`reports`: notebooks das análises.

## Relatório

O relatório referente à tarefa 2.4 foi desenvolvido com o intuito de corresponder aos objetivos expostos na tarefa original. Sua versão final está publicada [aqui](http://rpubs.com/tiago_clementino/384699). Já aquele referente à tarefa 3.1 ( [aqui](http://rpubs.com/tiago_clementino/390167) ), trata do mesmo problema, ou seja, responder às questões de análise, porém deixando a quarta questão de lado. Por fim, o relatório referente à tarefa 3.4 ([aqui](http://rpubs.com/tiago_clementino/392656)), trata apenas de duas questões do relatório anterior, utilizando teste de hipóteses para tomar conclusões aerca dos dados originais.

Para o relatório 3.1, além das questões descritas na tarefa original, é incluido uma outra que seria semelhante à primeira (**Q1**). Nesta questão, ao invés de fazer a análise em função dos grupos 'a' e 'b', tal como na **Q1** original, criamos dois novos grupos e analisamos em função deles. Tais grupos seriam partições randômicas do grupo 'a'.

No relatório 3.4, abordamos apenas a **Q1** do seu antecessor, além de sua versão alternativa (**Q1.alternativa**). Aqui o propósito é explorar as possibilidades do método estatísticos de teste de hipóteses.

## Os dados

O script `code/import-events_to_searches.R` é usado para tratar os dados de modo a criar ou transformar variáveis que tornaram as tarefas mais fáceis. Executar este script gera o arquivo `data/search_data.csv`. O script `import-events_to_searches.R` em si é a melhor documentação do que significa cada coluna em `data/search_data.csv`.

## Dependências

Os relatórios que descrevem tais tarefaa foram compilados no seguinte ambiente:

- [Microsoft Windows 10](https://www.microsoft.com/pt-br/software-download/windows10)
- [R 3.5.0](https://www.r-project.org/)
- [RStudio Desktop 1.1.477](https://www.rstudio.com/products/rstudio/download/)

Na IDE do RStudio, instale os seguintes pacotes:

- `tidyverse`
- `prettydoc`
- `lubridate`
- `here`
- `boot`
- `resample`
- `gridExtra`

## Procedimento para Replicação do Relatório

1. Configure o ambiente conforme descrito acima em "Dependências".
2. Clone este repositório. 
3. inicie a IDE RStudio.
4. Abra o projeto ".\exercicio-wikimedia.Rproj".
3. Abra o arquivo ".\dados\import-events_to_searches.R". Em seguida clique em "Run" (canto superior direito do editor). Isto pode levar algum tempo (é necessário ter conexão com a Internet).

### Para a tarefa 2.4

4. Abra o arquivo ".\reports\lab-2-checkpoint-4.2.Rmd". Clique em "Knit" (canto superior esquerdo do editor). Dentre as opções apresentadas, selecione "knit to html_pretty".
5. O resultado será exibido e estará disponível em ".\reports\lab-2-checkpoint-4.2.html".

### Para a tarefa 3.1

4. Abra o arquivo ".\reports\lab-3-checkpoint-1.2.Rmd". Clique em "Knit" (canto superior esquerdo do editor). Dentre as opções apresentadas, selecione "knit to html_pretty".
5. O resultado será exibido e estará disponível em ".\reports\lab-3-checkpoint-1.2.html".

### Para a tarefa 3.4

4. Abra o arquivo ".\reports\lab-3-checkpoint-4.2.Rmd". Clique em "Knit" (canto superior esquerdo do editor). Dentre as opções apresentadas, selecione "knit to html_pretty".
5. O resultado será exibido e estará disponível em ".\reports\lab-3-checkpoint-4.2.html".