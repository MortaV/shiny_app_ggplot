#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
library(extrafont)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
  output$skillPlot <- renderPlot({
    
    skills_names <- c(input$skill1, input$skill2, input$skill3, input$skill4, input$skill5)
    skills_values <- c(input$skill1value, input$skill2value, input$skill3value, input$skill4value, input$skill5value)
    
    skills <- data.frame(skill = skills_names,
                  grade = skills_values)
    
    # draw the histogram with the specified number of bins
    ggplot(skills, aes(x = skill, y = grade)) +
        geom_segment(aes(x = skill, xend = skill, y = 0, yend = grade), color="#A0A0A0") +
        geom_point(size = 10, color = input$color) +
        labs(title = "Skills", y = "Proficiency") +
        theme_minimal() +
        theme(plot.title = element_text(hjust = 0.5, size = 25), 
              text = element_text(family = "Montserrat"), 
              axis.ticks.y = element_blank(),
              axis.title.x = element_blank(),
              axis.title.y = element_text(size = 18),
              axis.text.y = element_text(size = 15),
              axis.text.x = element_text(angle = 90, hjust = 1, size = 18)) +
        scale_y_continuous(breaks = seq(0,10, by = 1), minor_breaks = seq(0,10, by = 1)) +
        coord_cartesian(ylim = c(0, 10))
    
  })
  
})
