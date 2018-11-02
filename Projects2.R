# Project 2 coDe:

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

######## Add column title location to express the site as categoical data.
impulsivity1$location <- "Site1"
impulsivity2$location <- "Site2"
impulsivity3$location <- "Site3"
impulsivity4$location <- "Site4"
impulsivity5$location <- "Site5"


######### Put all 5 data sheets into a single dataframe:
AllData <- rbind(impulsivity1, impulsivity2, impulsivity3, impulsivity4, impulsivity5)
View( AllData )
attach(AllData)

#Lines 33, 34, 68, and 69 contribute towards printing a PDF of the plots.
pdf("Project2plots.pdf")
for (i in 1:1){
  
library(gridExtra)
# A histogram of Impulsivity at each visit time 
hist(Imp1, main = "Distribution of Impulsivity at time 1(Imp1)", xlab = "Impulsivity levels", ylab = "Number of people", las=1, col = "red")

hist(Imp2, main = "Distribution of Impulsivity at time 2(Imp2)", xlab = "Impulsivity levels", ylab = "Number of people", las=1, col = "blue")

hist(Imp3, main = "Distribution of Impulsivity at time 3(Imp3)", xlab = "Impulsivity levels", ylab = "Number of people", las=1, col = "pink")

hist(Imp4, main = "Distribution of Impulsivity at time 4(Imp4)", xlab = "Impulsivity levels", ylab = "Number of people", las=1, col = "green")

hist(Imp5, main = "Distribution of Impulsivity at time 5(Imp5)", xlab = "Impulsivity levels", ylab = "Number of people", las=1, col = "purple")

#A box plot comparing Impulsivity across visits
boxplot(Imp1~AllData$location, main = 'Boxplot of impulsivity across visits at time 1', xlab = "Sites", ylab = "Impulsivity levels", las=1, col = "red")
#Create Summary for plot in pdf
bpiL1 <- do.call(cbind, tapply(Imp1, AllData$location, summary))
bpi1 <- data.frame(bpiL1)
bpi1[,] <-round(bpi1[,],1)
grid.arrange(top="Summary of impulsivity across visits at time 1", tableGrob(head(bpi1)))


boxplot(Imp2~AllData$location, main = 'Boxplot of impulsivity across visits at time 2', xlab = "Sites", ylab = "Impulsivity levels", las=1, col = "blue")
#Create Summary for plot in pdf
bpiL2 <- do.call(cbind, tapply(Imp2, AllData$location, summary))
bpi2 <- data.frame(bpiL2)
bpi2[,] <-round(bpi2[,],1)
grid.arrange(top="Summary of impulsivity across visits at time 2", tableGrob(head(bpi2)))


boxplot(Imp3~AllData$location, main = 'Boxplot of impulsivity across visits at time 3', xlab = "Sites", ylab = "Impulsivity levels", las=1, col = "pink")
#Create Summary for plot in pdf
bpiL3 <- do.call(cbind, tapply(Imp3, AllData$location, summary))
bpi3 <- data.frame(bpiL3)
bpi3[,] <-round(bpi3[,],1)
grid.arrange(top="Summary of impulsivity across visits at time 3", tableGrob(head(bpi3)))


boxplot(Imp4~AllData$location, main = 'Boxplot of impulsivity across visits at time 4', xlab = "Sites", ylab = "Impulsivity levels", las=1, col = "green")
#Create Summary for plot in pdf
bpiL4 <- do.call(cbind, tapply(Imp4, AllData$location, summary))
bpi4 <- data.frame(bpiL4)
bpi4[,] <-round(bpi4[,],1)
grid.arrange(top="Summary of impulsivity across visits at time 4", tableGrob(head(bpi4)))


boxplot(Imp5~AllData$location, main = 'Boxplot of impulsivity across visits at time 5', xlab = "Sites", ylab = "Impulsivity levels", las=1, col = "purple")
#Create Summary for plot in pdf
bpiL5 <- do.call(cbind, tapply(Imp5, AllData$location, summary))
bpi5 <- data.frame(bpiL5)
bpi5[,] <-round(bpi5[,],1)
grid.arrange(top="Summary of impulsivity across visits at time 5", tableGrob(head(bpi5)))


# A box plot comparing Impulsivity across treatments:
#5 plots for each indicated visit time:
boxplot(Imp1~TRT, main = 'Boxplot of impulsivity across treatments at time 1', xlab = "Treatments", ylab = "Impulsivity levels", las=1, col = "red")
#Create Summary for plot in pdf
bptL1 <- do.call(cbind, tapply(Imp1, TRT, summary))
bpt1 <- data.frame(bptL1)
bpt1[,] <-round(bpt1[,],1)
grid.arrange(top="Summary of impulsivity across treatments at time 1", tableGrob(head(bpt1)))


boxplot(Imp2~TRT, main = 'Boxplot of impulsivity across treatments at time 2', xlab = "Treatments", ylab = "Impulsivity levels", las=1, col = "blue")
#Create Summary for plot in pdf
bptL2 <- do.call(cbind, tapply(Imp2, TRT, summary))
bpt2 <- data.frame(bptL2)
bpt2[,] <-round(bpt2[,],1)
grid.arrange(top="Summary of impulsivity across treatments at time 2", tableGrob(head(bpt2)))


boxplot(Imp3~TRT, main = 'Boxplot of impulsivity across treatments at time 3', xlab = "Treatments", ylab = "Impulsivity levels", las=1, col = "pink")
#Create Summary for plot in pdf
bptL3 <- do.call(cbind, tapply(Imp3, TRT, summary))
bpt3 <- data.frame(bptL3)
bpt3[,] <-round(bpt3[,],1)
grid.arrange(top="Summary of impulsivity across treatments at time 3", tableGrob(head(bpt3)))


boxplot(Imp4~TRT, main = 'Boxplot of impulsivity across treatments at time 4', xlab = "Treatments", ylab = "Impulsivity levels", las=1, col = "green")
#Create Summary for plot in pdf
bptL4 <- do.call(cbind, tapply(Imp4, TRT, summary))
bpt4 <- data.frame(bptL4)
bpt4[,] <-round(bpt4[,],1)
grid.arrange(top="Summary of impulsivity across treatments at time 4", tableGrob(head(bpt4)))


boxplot(Imp5~TRT, main = 'Boxplot of impulsivity across treatments at time 5', xlab = "Treatments", ylab = "Impulsivity levels", las=1, col = "purple")
#Create Summary for plot in pdf
bptL5 <- do.call(cbind, tapply(Imp5, TRT, summary))
bpt5 <- data.frame(bptL5)
bpt5[,] <-round(bpt5[,],1)
grid.arrange(top="Summary of impulsivity across treatments at time 5", tableGrob(head(bpt5)))



#A box plot comparing Impulsivity across gender.

boxplot(Imp1~Gender, main = 'Boxplot of impulsivity across Gender at time 1', xlab = "Gender", ylab = "Impulsivity levels", las=1, col = "red")
#Create Summary for plot in pdf
bpgL1 <- do.call(cbind, tapply(Imp1, Gender, summary))
bpg1 <- data.frame(bpgL1)
bpg1[,] <-round(bpg1[,],1)
grid.arrange(top="Summary of impulsivity across Gender at time 1", tableGrob(head(bpg1)))

boxplot(Imp2~Gender, main = 'Boxplot of impulsivity across Gender at time 2', xlab = "Gender", ylab = "Impulsivity levels", las=1, col = "blue")
#Create Summary for plot in pdf
bpgL2 <- do.call(cbind, tapply(Imp2, Gender, summary))
bpg2 <- data.frame(bpgL2)
bpg2[,] <-round(bpg2[,],1)
grid.arrange(top="Summary of impulsivity across Gender at time 2", tableGrob(head(bpg2)))

boxplot(Imp3~Gender, main = 'Boxplot of impulsivity across Gender at time 3', xlab = "Gender", ylab = "Impulsivity levels", las=1, col = "pink")
#Create Summary for plot in pdf
bpgL3 <- do.call(cbind, tapply(Imp3, Gender, summary))
bpg3 <- data.frame(bpgL3)
bpg3[,] <-round(bpg3[,],1)
grid.arrange(top="Summary of impulsivity across Gender at time 3", tableGrob(head(bpg3)))


boxplot(Imp4~Gender, main = 'Boxplot of impulsivity across Gender at time 4', xlab = "Gender", ylab = "Impulsivity levels", las=1, col = "green")
#Create Summary for plot in pdf
bpgL4 <- do.call(cbind, tapply(Imp4, Gender, summary))
bpg4 <- data.frame(bpgL4)
bpg4[,] <-round(bpg4[,],1)
grid.arrange(top="Summary of impulsivity across Gender at time 4", tableGrob(head(bpg4)))


boxplot(Imp5~Gender, main = 'Boxplot of impulsivity across Gender at time 5', xlab = "Gender", ylab = "Impulsivity levels", las=1, col = "purple")
#Create Summary for plot in pdf
bpgL5 <- do.call(cbind, tapply(Imp5, Gender, summary))
bpg5 <- data.frame(bpgL5)
bpg5[,] <-round(bpg5[,],1)
grid.arrange(top="Summary of impulsivity across Gender at time 5", tableGrob(head(bpg5)))



}
dev.off()