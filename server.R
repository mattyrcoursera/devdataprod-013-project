library(shiny)
library(datasets)
library(reshape2)
library(randomForest)
data(crimtab)

d <- melt(crimtab)
fit <- randomForest(value ~., data=d)

predictCriminal <- function(height, mflength) {
    val <- predict(fit, data.frame(Var1=mflength, Var2=height))
    if (val > 10) {
        "Yes!"
    } else {
        "No."
    }
}

shinyServer(
    function(input, output) {
        output$height <- renderPrint({input$height})
        output$mflength <- renderPrint({input$mflength})
        output$criminal <- renderPrint(predictCriminal(input$height, input$mflength))
    }
)