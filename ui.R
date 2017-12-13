library(shiny)
library(LPWC)

pageWithSidebar(
  headerPanel('Lag Penalized Weighted Correlation'),
  sidebarPanel(
    fileInput('file1', 'Data (CSV file)',
              accept=c('text/csv', 'text/comma-separated-values,text/plain', '.csv')),
    radioButtons('sep', 'Separator',
                 c(Comma=',',
                   Semicolon=';',
                   Tab='\t'),
                 ','),
    radioButtons('pen', 'Penalty',
                 c(High = 'high',
                   Low = 'low'),
                 'high'),
    numericInput("k", "Number of clusters:", 10)),
    tags$a(href="https://github.com/gitter-lab/LPWC", "Click here!")
  mainPanel(tableOutput(outputId = 'table.output'))
)
