library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Are you a criminal?"),
    sidebarPanel(
        h3("Input"),
        numericInput("height", "Heigh (cm)", 142, min=142, max=200, step=1),
        numericInput("mflength", "Middle Finger Length (cm)", 9.4, min=9.4, max=13.5, step=0.1),
        h3("Documentation"),
        p("This tool uses the crimtab dataset in R to (non-seriously) predict if you are criminal based on your height and the length of your middle finger.  Behind the scenes it uses a random forest model to compute a score for your inputs and decides if you are criminal!  This is obviously just for entertainment purposes, and to demonstrate a functional Shiny App -- I wouldn't read too much into the results! :)"),
        p("Enter your height in cm and the length of your middle finger in cm.  The results pane on the right will automatically update (it may take a moment, wait for your inputted values to update).  Enjoy!"),
        p("If you want to see a criminal result, enter 171 for the height and 11 for the middle finger length.")
    ),
    mainPanel(
        h3("Results"),
        h4("Your Entered Height"),
        verbatimTextOutput("height"),
        h4("Your Entered Middle Finger Length"),
        verbatimTextOutput("mflength"),
        h4("Are you probably a criminal?"),
        verbatimTextOutput("criminal")
    )
))
