library(shiny)
shinyUI(
pageWithSidebar(
  
headerPanel("Cockroft-Gault calculator"),
sidebarPanel(
numericInput('weight', 'Weight kg',70),
numericInput('age', 'Age years', 50),
numericInput('creatinine', 'Serum creatinine', 1, step=0.01),
radioButtons('sex', "Sex", c("Male"="Male", "Female"="Female")),
submitButton('Submit')
),

mainPanel(
  p("This Shiny application calculates creatinin clearance based on the Cockroft Gault equation."),
  p("Creatinin clearance is an important marker of renal function and a value <75 ml/min suggests renal failure. As an input, you need to enter the age in years, weight in kilos, plasma creatinin in mg/dl and sex of your patient."),
h3('Estimated Creatinine Clearance (ml/min)'),
verbatimTextOutput("prediction")

)
)
)