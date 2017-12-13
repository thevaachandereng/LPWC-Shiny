library(LPWC)

function(input, output){
  output$table.output <- renderTable({
    inFile <- input$file1
    if (is.null(inFile))
      return(NULL)
    data <- read.csv(inFile$datapath, sep=input$sep)
    return(data^2)
  })
}