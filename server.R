# Define server logic required to draw a histogram ----
library(data.table)
library(tidyverse)

server <- function(input, output) {
      output$distPlot <- renderPlot({
            df<-datasets::swiss
            County<-rownames(df)
            df$County<-County
            setDT(df)
            #Filter counties
            df<-df[County %in% input$county]
            ggplot(df)+
                  geom_bar(aes(x=County,y=Education), stat = "identity")+
                  theme_bw()
            
      })
      
}