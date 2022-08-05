
library(foreign)
mydata2<-read.spss("C:/Users/12345/Desktop/DATA1.sav",to.data.frame=TRUE,row.names="Country")

datamatrix<-cor(mydata2)
corrplot::corrplot(datamatrix,method = "number")


round((R<-cor(mydata2)),2)
eigen(R)$values


mydata2.fit <- factanal(mydata2,factors= 4, rotation="varimax")
mydata2.fit
