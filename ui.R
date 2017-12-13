library(shiny)
library(LPWC)

ui <- pageWithSidebar(
  headerPanel('Lag Penalized Weighted Correlation')
  ,
  sidebarPanel(
    fileInput('file1', 'Data (CSV file)',
              accept=c('text/csv', 'text/comma-separated-values,text/plain', '.csv'))
    ,
    tags$hr(),
    radioButtons('sep', 'Separator',
                 c(Comma=',',
                   Semicolon=';',
                   Tab='\t'),
                 ','),
    radioButtons('pen', 'Penalty',
                 c(High = 'high',
                   Low = 'low'),
                 'high'),
    numericInput("k", "Number of clusters:", 10))
  ,
  mainPanel(tableOutput(outputId = 'table.output'))
)
