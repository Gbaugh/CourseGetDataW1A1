fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileUrl, "./CourseraGetData/getdata.csv", method = "curl")
quizdata <- read.table("./CourseraGetData/getdata.csv", sep = ",", header=TRUE)
View(quizdata)
head(quizdata)
quizdata[["VAL"]]
length(which(quizdata[["VAL"]] == "24"))
install.packages("xlsx")
library(xlsx)
download.file(fileUrl, "./CourseraGetData/NGAP.xlsx", method = "curl")
quizdata <- read.xlsx("./CourseraGetData/NGAP.xlsx")
colIndex <- 7:15
rowIndex <- 18:2
quizdata <- read.xlsx("./CourseraGetData/NGAP.xlsx", sheetIndex=1, colIndex=colIndex, rowIndex=rowIndex)

install.packages("XML")
library(xml)
