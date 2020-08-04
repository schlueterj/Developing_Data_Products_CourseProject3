library(shiny)
library(UsingR)
shinyServer(function(input, output) {
        model <- lm(price ~ carat, data = diamond)
        
        modelpred <- reactive({
                caratInput <- input$slidercarat
                predict(model, newdata = data.frame(carat = caratInput))
        })
        
        output$plot <- renderPlot({
                caratInput <- input$slidercarat
                plot(diamond$carat, diamond$price, xlab = "Mass (carats)",
                     ylab = "Price (SIN $)", bty = "n", pch = 21,
                     xlim = c(0.1, 0.35), ylim = c(200, 1000))
                if(input$showModel){
                        abline(model, col = "blue", lwd = 2)
                }
                legend(0.25, 400, "Model Prediction", pch = 21,
                       col = "blue", bty = "n", cex = 1.2)
                points(caratInput, modelpred(), col = "blue", pch = 21, cex = 2)
        })
        output$pred <- renderText({
                modelpred()
        })
})