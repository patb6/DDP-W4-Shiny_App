#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
###################################


library(shiny)
library(curl)
library(jsonlite)
library(DT)


# Source of data: https://covidtracking.com/api
# Code run outside the Shiny environment is run per instance.


d_current_data = fromJSON("https://covidtracking.com/api/v1/states/daily.json")

# Create date variable
d_current_data = transform(d_current_data, dd = as.Date(as.character(d_current_data$date), "%Y%m%d"))
# Create unique list of States for Shiny Dropdown menue
d_state_list = sort(unique(d_current_data$state))
names(d_state_list) = d_state_list

## Shiny help
##  Select input: https://shiny.rstudio.com/reference/shiny/latest/selectInput.html
##  shinyapp.io : https://docs.rstudio.com/shinyapps.io/
##  

    
    # Shiny Application
    shinyApp(
        ui = fluidPage(
            titlePanel("State COVID19 Data"),
            selectInput("variable", "State (Select from Dropdown):",
                        d_state_list, selected = "AZ"),
            DT::dataTableOutput("state_table")
        ),
        server = function(input, output) {
            message("server_function")
            d_state_data = 
                reactive({a = subset(d_current_data, state == input$variable)
                nrow(a)
                return(a)})
            nrow(d_state_data)
            output$state_table = 
                DT::renderDataTable(d_state_data())
            
        }
    )
    

    


