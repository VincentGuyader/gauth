library(shiny)
library("googleAnalyticsR")

# 2018-08-31 21:00:00> No local token found in session
# 2018-08-31 21:00:00> Auto-refresh of token not possible, manual re-authentication required
# Warning: Error in : Authentication options didn't match existing session token and not interactive session
#            so unable to manually reauthenticate


# options(googleAuthR.client_id)
# options(googleAuthR.client_secret)

# getOption("httr_oauth_cache")
options(httr_oauth_cache = FALSE)
options(googleAuthR.verbose=2)
ui <- fluidPage(
  actionButton(inputId = "go",label = "go"),
  verbatimTextOutput("log")
)

server <- function(input, output, session) {

  info <- reactiveValues()

  observeEvent(input$go,{
    message("clic")
    ga_auth(new_user = TRUE)
    info$account_list <- ga_account_list()


  })

  output$log <- renderPrint({
    print(info$account_list)


  })

}

shinyApp(ui, server)
