#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(theme = "css_for_assignment.css",
  
  # Application title
  titlePanel("GGplot graph for your CV"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       textInput("skill1",
                 "Your first skill:",
                 value = "R"),
       sliderInput("skill1value",
                   "How well do you know it?",
                   min = 0, max = 10, value = 6),
       textInput("skill2",
                 "Your second skill:",
                 value = "Excel"),
       sliderInput("skill2value",
                   "How well do you know it?",
                   min = 0, max = 10, value = 9),
       textInput("skill3",
                 "Your third skill:",
                 value = "Python"),
       sliderInput("skill3value",
                   "How well do you know it?",
                   min = 0, max = 10, value = 2),
       textInput("skill4",
                 "Your fourth skill:",
                 "Tableau"),
       sliderInput("skill4value",
                   "How well do you know it?",
                   min = 0, max = 10, value = 5),
       textInput("skill5",
                 "Your fifth skill:",
                 "Machine Learning"),
       sliderInput("skill5value",
                   "How well do you know it?",
                   min = 0, max = 10, value = 3),
       textInput("color",
                 "Colour for the bubbles (in a hex format #xxxxxx):",
                 value = "#943126"),
       submitButton("Update Graph", 
                    icon("refresh")),
       helpText("When you click the button above, you should see",
                "the graph update to reflect the values you",
                "entered:")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
        fluidRow(
            h3("How to use the app?"),
            p("In the graph below you can see 5 skills and the grades you can give yourself (how profficient you are in them)."),
            p("There are several things you can change in the graph:"),
            p("1. Skill names;"),
            p("2. Skill grades;"),
            p("3. The color of the bubbles."),
            p("After you are ready with the input, press the \"Update Graph\" button"),
            br(),
            br()
        ),
        fluidRow(
            plotOutput("skillPlot")
        )
        
    )
  )
))
