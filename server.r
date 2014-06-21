library(shiny)

VGFcalculator<- function(age, weight, creatinine, sex) {
   if (sex=="Male"){
     VGF=(140-age)*weight/(72*creatinine)}
  if (sex=="Female"){
     VGF=((140-age)*weight/(72*creatinine))*0.85}
print(VGF)}

shinyServer(
function(input, output){
  output$inputValue <- renderPrint({input$age})
  output$inputValue <- renderPrint({input$weight})
  output$inputValue <- renderPrint({input$creatinin})
  output$inputValue <- renderPrint({input$sex})
  output$prediction<- renderPrint({VGFcalculator(input$age,input$weight,input$creatinine, input$sex)})
}
)