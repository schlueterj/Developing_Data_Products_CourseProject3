library(shiny)
shinyUI(fluidPage(
        titlePanel("Predict diamond price from weight"),
        sidebarLayout(
                sidebarPanel(
                        sliderInput("slidercarat", "What is the weight in carats of the diamond?", 0.1, 0.35, value = 0.2),
                        checkboxInput("showModel", "Show/Hide Model", value = TRUE),
                        submitButton("Submit")
                ),
                mainPanel(
                 tabsetPanel(type = "tabs",
                        tabPanel("Documentation",
                                 br(), 
                                 "We use the diamond data set from UsingR. Data is diamond prices (Signapore dollars) and diamond weight in carats (standard measure of diamond mass, 0.2 ). A linear regression model is fitted to the data to predict the diamond price from weight.", br(), br(), "On the left you can use the slider to choose the weight in carat. Furthermore, you can decide whether you want to show or hide the linear regression model in the plot.",
                                 br(), br(), 
                                 "On tab 'Plot and Prediction' you can see a plot with the fitted regression line and data and the predicted value based on your slider input."),
                        tabPanel("Plot and Prediction", br(), plotOutput("plot"),
                        h3("Predicted diamond price (Signapore dollars) from Model:"),
                        textOutput("pred"),)
                 )
                )
        )
))