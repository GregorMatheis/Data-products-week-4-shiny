# Define UI for app that draws a histogram ----
df<-datasets::swiss
County<-rownames(df)

ui <- fluidPage(
      
      
      # App title ----
      titlePanel("Swiss education!"),
      
      # Sidebar layout with input and output definitions ----
      sidebarLayout(
            
            # Sidebar panel for inputs ----
            sidebarPanel(
                  
                  # Input: Slider for the number of bins ----
                  selectInput(inputId = "county",
                              label = "Select county for plot:",
                              choices = County, 
                              selected = County[1:4],
                              multiple = T)
            ),
            
            # Main panel for displaying outputs ----
            mainPanel(
                  
                  # Output: Histogram ----
                  plotOutput(outputId = "distPlot"),
                  p("This plot shows you the selected swiss county with their education level from the swiss data set"),
                  p("Selecting countys makes them comparable and plot rescales automaticly if need be")
                  
            )
      )
)