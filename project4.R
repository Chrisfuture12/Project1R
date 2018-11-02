# Project 4 code 
# Create numerical descriptions of the data:
# A summary of Impulsivity at each visit time. (10 pts)
# A summary of Impulsivity across visits. (10 pts)
# A summary of Impulsivity across treatments.(10 pts)
# A summary of Impulsivity across gender. (10 pts)
# Note that summaries must include Mean, Median, Standard Deviation, 
# IQR and Min, Max, Q1 and Q3.  Be sure to put these in the comments of your code.  
# Note that you will only upload one file and the impulsivity data will be read 
# into a dataframe called Impulse1.  (Be sure when you read in the data you assign it the name Impulse1!)

#Read in data
setwd("/TempData")
getwd()
 
library(readxl) 

read_excel_allsheets <- function(impulsivity.xlsx) {
  sheets <- readxl::excel_sheets("impulsivity.xlsx")
  x <-    lapply(sheets, function(X) readxl::read_excel("impulsivity.xlsx", sheet = X))
  names(x) <- sheets
  x
}

Impulse1 <- do.call(rbind.data.frame, read_excel_allsheets("impulsivity.xlsx"))

str(Impulse1)
View(Impulse1)

# A summary of Impulsivity at each visit time. (10 pts)
# Order: Summary: min, q1, median, mean, q3, max, sd, iQR 
summary(Impulse1$Imp1)
sd(Impulse1$Imp1)
IQR(Impulse1$Imp1)
summary(Impulse1$Imp2)
sd(Impulse1$Imp2)
IQR(Impulse1$Imp2)
summary(Impulse1$Imp3)
sd(Impulse1$Imp3)
IQR(Impulse1$Imp3)
summary(Impulse1$Imp4)
sd(Impulse1$Imp4)
IQR(Impulse1$Imp4)
summary(Impulse1$Imp5)
sd(Impulse1$Imp5)
IQR(Impulse1$Imp5)

# A summary of Impulsivity across visits(sites) at each time (1-5). (10 pts)
# Order: Summary: min, q1, median, mean, q3, max, sd, iQR 
Site1 <- Impulse1[grepl("Site 1", rownames(Impulse1)), ]
summary(Site1$Imp1)
sd(Site1$Imp1)
IQR(Site1$Imp1)
summary(Site1$Imp2)
sd(Site1$Imp2)
IQR(Site1$Imp2)
summary(Site1$Imp3)
sd(Site1$Imp3)
IQR(Site1$Imp3)
summary(Site1$Imp4)
sd(Site1$Imp4)
IQR(Site1$Imp4)
summary(Site1$Imp5)
sd(Site1$Imp5)
IQR(Site1$Imp5)

Site2 <- Impulse1[grepl("Site 2", rownames(Impulse1)), ]
summary(Site2$Imp1)
sd(Site2$Imp1)
IQR(Site2$Imp1)
summary(Site2$Imp2)
sd(Site2$Imp2)
IQR(Site2$Imp2)
summary(Site2$Imp3)
sd(Site2$Imp3)
IQR(Site2$Imp3)
summary(Site2$Imp4)
sd(Site2$Imp4)
IQR(Site2$Imp4)
summary(Site2$Imp5)
sd(Site2$Imp5)
IQR(Site2$Imp5)

Site3 <- Impulse1[grepl("Site 3", rownames(Impulse1)), ]
summary(Site3$Imp1)
sd(Site3$Imp1)
IQR(Site3$Imp1)
summary(Site3$Imp2)
sd(Site3$Imp2)
IQR(Site3$Imp2)
summary(Site3$Imp3)
sd(Site3$Imp3)
IQR(Site3$Imp3)
summary(Site3$Imp4)
sd(Site3$Imp4)
IQR(Site3$Imp4)
summary(Site3$Imp5)
sd(Site3$Imp5)
IQR(Site3$Imp5)

Site4 <- Impulse1[grepl("Site 4", rownames(Impulse1)), ]
summary(Site4$Imp1)
sd(Site4$Imp1)
IQR(Site4$Imp1)
summary(Site4$Imp2)
sd(Site4$Imp2)
IQR(Site4$Imp2)
summary(Site4$Imp3)
sd(Site4$Imp3)
IQR(Site4$Imp3)
summary(Site4$Imp4)
sd(Site4$Imp4)
IQR(Site4$Imp4)
summary(Site4$Imp5)
sd(Site4$Imp5)
IQR(Site4$Imp5)

Site5 <- Impulse1[grepl("Site 5", rownames(Impulse1)), ]
summary(Site5$Imp1)
sd(Site5$Imp1)
IQR(Site5$Imp1)
summary(Site5$Imp2)
sd(Site5$Imp2)
IQR(Site5$Imp2)
summary(Site5$Imp3)
sd(Site5$Imp3)
IQR(Site5$Imp3)
summary(Site5$Imp4)
sd(Site5$Imp4)
IQR(Site5$Imp4)
summary(Site5$Imp5)
sd(Site5$Imp5)
IQR(Site5$Imp5)

# A summary of Impulsivity across treatments.(10 pts)
# Order: Summary: min, q1, median, mean, q3, max, sd, iQR 

iatS1 <- do.call(cbind, tapply(Impulse1$Imp1, Impulse1$TRT, summary))
iatS1
sd(iatS1) 
IQR(iatS1)
iatS2 <- do.call(cbind, tapply(Impulse1$Imp2, Impulse1$TRT, summary))
iatS2
sd(iatS2) 
IQR(iatS2)
iatS3 <- do.call(cbind, tapply(Impulse1$Imp3, Impulse1$TRT, summary))
iatS3
sd(iatS3) 
IQR(iatS3)
iatS4 <- do.call(cbind, tapply(Impulse1$Imp4, Impulse1$TRT, summary))
iatS4
sd(iatS4) 
IQR(iatS4)
iatS5 <- do.call(cbind, tapply(Impulse1$Imp5, Impulse1$TRT, summary))
iatS5
sd(iatS5) 
IQR(iatS5)

# A summary of Impulsivity across gender. (10 pts)
# Order: Summary: min, q1, median, mean, q3, max, sd, iQR 

impm <- Impulse1[ Impulse1$Gender == "M", ]
impf <- Impulse1[ Impulse1$Gender == "F", ]

iagmS1 <- do.call(cbind, tapply(impm$Imp1, impm$Gender, summary))
iagmS1
sd(iagmS1) 
IQR(iagmS1)
iagmS2 <- do.call(cbind, tapply(impm$Imp2, impm$Gender, summary))
iagmS2
sd(iagmS2) 
IQR(iagmS2)
iagmS3 <- do.call(cbind, tapply(impm$Imp3, impm$Gender, summary))
iagmS3
sd(iagmS3) 
IQR(iagmS3)
iagmS4 <- do.call(cbind, tapply(impm$Imp4, impm$Gender, summary))
iagmS4
sd(iagmS4) 
IQR(iagmS4)
iagmS5 <- do.call(cbind, tapply(impm$Imp5, impm$Gender, summary))
iagmS5
sd(iagmS5) 
IQR(iagmS5)
iagfS1 <- do.call(cbind, tapply(impf$Imp1, impf$Gender, summary))
iagfS1
sd(iagfS1) 
IQR(iagfS1)
iagfS2 <- do.call(cbind, tapply(impf$Imp2, impf$Gender, summary))
iagfS2
sd(iagfS2) 
IQR(iagfS2)
iagfS3 <- do.call(cbind, tapply(impf$Imp3, impf$Gender, summary))
iagfS3
sd(iagfS3) 
IQR(iagfS3)
iagfS4 <- do.call(cbind, tapply(impf$Imp4, impf$Gender, summary))
iagfS4
sd(iagfS4) 
IQR(iagfS4)
iagfS5 <- do.call(cbind, tapply(impf$Imp5, impf$Gender, summary))
sd(iagfS5) 
iagfS5
IQR(iagfS5)

iagS2 <- do.call(cbind, tapply(Impulse1$Imp2, Impulse1$Gender, summary))
iagS2
iagS3 <- do.call(cbind, tapply(Impulse1$Imp3, Impulse1$Gender, summary))
iagS3
iagS4 <- do.call(cbind, tapply(Impulse1$Imp4, Impulse1$Gender, summary))
iagS4
iagS5 <- do.call(cbind, tapply(Impulse1$Imp5, Impulse1$Gender, summary))
iagS5


