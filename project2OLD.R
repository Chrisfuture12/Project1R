# old Project 2 coDe:

# ReaD in the researcher's Data in computer:
setwd("/TempData")
getwd()
library(readxl)
impulsivity1 <- read_excel("impulsivity.xlsx", 
                          sheet = 1)
impulsivity2 <- read_excel("impulsivity.xlsx", 
                          sheet = 2)
impulsivity3 <- read_excel("impulsivity.xlsx", 
                          sheet = 3)
impulsivity4 <- read_excel("impulsivity.xlsx", 
                          sheet = 4)
impulsivity5 <- read_excel("impulsivity.xlsx", 
                          sheet = 5)
View (impulsivity1)

######### Put all 5 data sheets into a single dataframe:
AllData <- rbind(impulsivity1,impulsivity2, impulsivity3, impulsivity4, impulsivity5)
View( AllData )
#Extract Trt data & Gender Data across site 1 and place into 
GDRData1 <- impulsivity1$Gender
TRTData1 <- impulsivity1$TRT
View(TRTData1)
TRTIMP1 <- data.frame(TRTData1, GDRData1, ImpData1)

View(TRTIMP1)
# All of site 1's time 1-5 numbers storeD into a vector, respectively:
Imp1Data1 <- impulsivity1$Imp1
Imp1Data1 #Check 
Imp2Data1 <- impulsivity1$Imp2
Imp2Data1 #Check 
Imp3Data1 <- impulsivity1$Imp3
Imp3Data1 #Check 
Imp4Data1 <- impulsivity1$Imp4
Imp4Data1 #Check 
Imp5Data1 <- impulsivity1$Imp5
Imp5Data1 #Check 
ImpData1 <- list(Imp1Data1, Imp2Data1, Imp3Data1, Imp4Data1, Imp5Data1)
ImpData1 <- sapply(ImpData1, '[', 1:25)
View(ImpData1)

# All of site 2's time 1-5 numbers storeD into a vector, respectively:
Imp1Data2 <- impulsivity2$Imp1
Imp1Data2 #Check 
Imp2Data2 <- impulsivity2$Imp2
Imp2Data2 #Check 
Imp3Data2 <- impulsivity2$Imp3
Imp3Data2 #Check 
Imp4Data2 <- impulsivity2$Imp4
Imp4Data2 #Check 
Imp5Data2 <- impulsivity2$Imp5
Imp5Data2 #Check 

# All of site 3's time 1-5 numbers storeD into a vector, respectively:
Imp1Data3 <- impulsivity3$Imp1
Imp1Data3 #Check
Imp2Data3 <- impulsivity3$Imp2
Imp2Data3 #Check 
Imp3Data3 <- impulsivity3$Imp3
Imp3Data3 #Check 
Imp4Data3 <- impulsivity3$Imp4
Imp4Data3 #Check 
Imp5Data3 <- impulsivity3$Imp5
Imp5Data3 #Check 

# All of site 4's time 1-5 numbers storeD into a vector, respectively:
Imp1Data4 <- impulsivity4$Imp1
Imp1Data4 #Check
Imp2Data4 <- impulsivity4$Imp2
Imp2Data4 #Check 
Imp3Data4 <- impulsivity4$Imp3
Imp3Data4 #Check 
Imp4Data4 <- impulsivity4$Imp4
Imp4Data4 #Check 
Imp5Data4 <- impulsivity4$Imp5
Imp5Data4 #Check 

# All of site 5's time 1-5 numbers storeD into a vector, respectively:
Imp1Data5 <- impulsivity5$Imp1
Imp1Data5 #Check 
Imp2Data5 <- impulsivity5$Imp2
Imp2Data5 #Check 
Imp3Data5 <- impulsivity5$Imp3
Imp3Data5 #Check 
Imp4Data5 <- impulsivity5$Imp4
Imp4Data5 #Check 
Imp5Data5 <- impulsivity5$Imp5
Imp5Data5 #Check 

#Store all of the vectors into a list 
iD1 <- list(Imp1Data1, Imp1Data2, Imp1Data3, Imp1Data4, Imp1Data5)  
iD2 <- list(Imp2Data1, Imp2Data2, Imp2Data3, Imp2Data4, Imp2Data5)  
iD3 <- list(Imp3Data1, Imp3Data2, Imp3Data3, Imp3Data4, Imp3Data5)  
iD4 <- list(Imp4Data1, Imp4Data2, Imp4Data3, Imp4Data4, Imp4Data5)  
iD5 <- list(Imp5Data1, Imp5Data2, Imp5Data3, Imp5Data4, Imp5Data5)  

#fill in the missing values to make it a Data table. 
iD1 <- sapply(iD1, '[', 1:49)
iD2 <- sapply(iD2, '[', 1:49)
iD3 <- sapply(iD3, '[', 1:49)
iD4 <- sapply(iD4, '[', 1:49)
iD5 <- sapply(iD5, '[', 1:49)

# histograms 
hist(iD1)
hist(iD2)
hist(iD3)
hist(iD4)
hist(iD5)

# create box plot comparing impusivity across treatments  
boxplot(I~TRT)
boxplot(Imp2~TRT)
boxplot(Imp3~TRT)
boxplot(Imp4~TRT)
boxplot(Imp5~TRT)

# create box plot comparing impusivity across genDer  
boxplot(Imp1~GenDer)
boxplot(Imp2~GenDer)
boxplot(Imp3~GenDer)
boxplot(Imp4~GenDer)
boxplot(Imp5~GenDer)