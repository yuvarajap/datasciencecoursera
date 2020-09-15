#Change working dirctory
setwd("C:/Users/Yuvi/Documents/R/scripts")
#Read repayment Test DAta
testdata<-read.csv("C:/Users/Yuvi/Documents/R/scripts/testdata.csv")
#Check size of data
if (is.data.frame(testdata)){  
  cat("Row x Colums:",nrow(testdata),"x",ncol(testdata))
}else{ 
  cat("wrong data")
}
plot(testdata$EMI.PRIN, type = "o" )
#generate month number
no_of_months <- 100
#generate Vector
nm<-1:no_of_months
x1=nm
# Generate 100 samples of paymentDoneTrue
x2<- sample(1:1, 100, replace=T)

testData <- list(x1,x2)

testData[1:30]
