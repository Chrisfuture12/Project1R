# Project 3 code
# 1. Create a scatterplot of revenue against month with correct titles for all the data.
# 2. Create a scatterplot of revenue against month with correct titles for each store.
# 3. Create a wide dataset with each row corresponding to a store and the remaining columns are the monthly revenue values.
# 4. Create a wide dataset that has one row containing the mean revenue for each month as the columns. 

#read in data:
setwd("/TempData")
getwd()
ssData <- read.csv("StoreSales.csv", header = TRUE)
View(ssData)
ssData[56, 2] = 4
#1.
plot( ssData$Revenue~ssData$Month,
      xlab = "Month",
      ylab = "Revenue",
      main = "Revenue aginst month"
      )


# Shape: Skewed left (december is extreme value) 
# Center: about month 6
# range : 1 to 12
# unusual features: month 12 is drastically different in revenue comapared to the prior months.

#2. 

storeID1 <- subset(ssData, Store == "NM0034") 
plot( storeID1$Revenue~storeID1$Month,
      xlab = "Month",
      ylab = "Revenue",
      main = "Revenue aginst month at store NM0034"
)

# Shape: Skewed left (december is extreme value) 
# Center: about month 6
# range : 1 to 12
# unusual features: month 12 is drastically different in revenue comapared to the prior months.

storeID2 <- subset(ssData, Store == "NE0041") 
plot( storeID2$Revenue~storeID2$Month,
      xlab = "Month",
      ylab = "Revenue",
      main = "Revenue aginst month at store NE0041"
)
# Shape: Skewed left (december is extreme value) 
# Center: about month 6
# range : 1 to 12
# unusual features: month 12 is drastically different in revenue comapared to the prior months.

storeID3 <- subset(ssData, Store == "SC0345") 
plot( storeID3$Revenue~storeID3$Month,
      xlab = "Month",
      ylab = "Revenue",
      main = "Revenue aginst month at store SC0345"
)
# Shape: Skewed left (december is extreme value) 
# Center: about month 6
# range : 1 to 12
# unusual features: month 12 is drastically different in revenue comapared to the prior months.

storeID4 <- subset(ssData, Store == "NM0331") 
plot( storeID4$Revenue~storeID4$Month,
      xlab = "Month",
      ylab = "Revenue",
      main = "Revenue aginst month at store NM0331"
)
# Shape: Skewed left (december is extreme value) 
# Center: about month 6
# range : 1 to 12
# unusual features: month 12 is drastically different in revenue comapared to the prior months.

storeID5 <- subset(ssData, Store == "SC0001") 
plot( storeID5$Revenue~storeID5$Month,
      xlab = "Month",
      ylab = "Revenue",
      main = "Revenue aginst month at store SC0001"
)
# Shape: Skewed left (december is extreme value) 
# Center: about month 6
# range : 1 to 12
# unusual features: month 12 is drastically different in revenue comapared to the prior months.

storeID6 <- subset(ssData, Store == "SC0041") 
plot( storeID6$Revenue~storeID6$Month,
      xlab = "Month",
      ylab = "Revenue",
      main = "Revenue aginst month at store SC0041"
) 
# Shape: Skewed left (december is extreme value) 
# Center: about month 6
# range : 1 to 12
# unusual features: months 1 through 4 are all decending but much higher than the previos stores in some cases. however, after four there is a general low revenue phase until month 8 and 12. month 12 is drastically different in revenue comapared to the prior months.

storeID7 <- subset(ssData, Store == "NC0041") 
plot( storeID7$Revenue~storeID7$Month,
      xlab = "Month",
      ylab = "Revenue",
      main = "Revenue aginst month at store NC0041"
)
# Shape: Skewed left (december is extreme value) 
# Center: about month 6
# range : 1 to 12
# unusual features: month 12 is drastically different in revenue comapared to the prior months.

storeID8 <- subset(ssData, Store == "VA0031") 
plot( storeID8$Revenue~storeID8$Month,
      xlab = "Month",
      ylab = "Revenue",
      main = "Revenue aginst month at store VA0031"
)

# Shape: Skewed left (december is extreme value) 
# Center: about month 6
# range : 1 to 12
# unusual features: month 12 is drastically different in revenue comapared to the prior months.

storeID9 <- subset(ssData, Store == "RI0031") 
plot( storeID9$Revenue~storeID9$Month,
      xlab = "Month",
      ylab = "Revenue",
      main = "Revenue aginst month at store RI0031"
)

# Shape: Skewed left (december is extreme value) 
# Center: about month 6
# range : 1 to 12
# unusual features: month 12 is drastically different in revenue comapared to the prior months.

storeID10 <- subset(ssData, Store == "MA0041") 
plot( storeID10$Revenue~storeID10$Month,
      xlab = "Month",
      ylab = "Revenue",
      main = "Revenue aginst month at store MA0041"
)
# Shape: Skewed left (december is extreme value) 
# Center: about month 6
# range : 1 to 12
# unusual features: month 12 is drastically different in revenue comapared to the prior months.

storeID11 <- subset(ssData, Store == "NM0004") 
plot( storeID11$Revenue~storeID11$Month,
      xlab = "Month",
      ylab = "Revenue",
      main = "Revenue aginst month at store NM0004"
)
# Shape: Skewed left (december is extreme value) 
# Center: about month 6
# range : 1 to 12
# unusual features: month 12 is drastically different in revenue comapared to the prior months.

storeID12 <- subset(ssData, Store == "NM0003") 
plot( storeID12$Revenue~storeID12$Month,
      xlab = "Month",
      ylab = "Revenue",
      main = "Revenue aginst month at store NM0003"
)

# Shape: Skewed left (december is extreme value) 
# Center: about month 6
# range : 1 to 12
# unusual features: month 12 is drastically different in revenue comapared to the prior months.

storeID13 <- subset(ssData, Store == "MA0044") 
plot( storeID13$Revenue~storeID13$Month,
      xlab = "Month",
      ylab = "Revenue",
      main = "Revenue aginst month at store MA0044"
)
# Shape: Skewed left (december is extreme value) 
# Center: about month 6
# range : 1 to 12
# unusual features: month 12 is drastically different in revenue comapared to the prior months.

storeID14 <- subset(ssData, Store == "ME0003") 
plot( storeID14$Revenue~storeID14$Month,
      xlab = "Month",
      ylab = "Revenue",
      main = "Revenue aginst month at store ME0003"
)
# Shape: Skewed left (december is extreme value) 
# Center: about month 6
# range : 1 to 12
# unusual features: month 12 is drastically different in revenue comapared to the prior months.

# 3

#  Subset the data by each month 
t1 <- ssData[ssData$Month == 1, c(1,3)]
t2 <- ssData[ssData$Month == 2, c(1,3)]
t3 <- ssData[ssData$Month == 3, c(1,3)]
t4 <- ssData[ssData$Month == 4, c(1,3)]
t5 <- ssData[ssData$Month == 5, c(1,3)]
t6 <- ssData[ssData$Month == 6, c(1,3)]
t7 <- ssData[ssData$Month == 7, c(1,3)]
t8 <- ssData[ssData$Month == 8, c(1,3)]
t9 <- ssData[ssData$Month == 9, c(1,3)]
t10 <- ssData[ssData$Month == 10, c(1,3)]
t11 <- ssData[ssData$Month == 11, c(1,3)]
t12 <- ssData[ssData$Month == 12, c(1,3)]


# CHange the name of the column to reflect the sample
names(t1)[2] <- "rev1"
names(t2)[2] <- "rev2"
names(t3)[2] <- "rev3"
names(t4)[2] <- "rev4"
names(t5)[2] <- "rev5"
names(t6)[2] <- "rev6"
names(t7)[2] <- "rev7"
names(t8)[2] <- "rev8"
names(t9)[2] <- "rev9"
names(t10)[2] <- "rev10"
names(t11)[2] <- "rev11"
names(t12)[2] <- "rev12"

# Merge the dataframes togeather 
FA2 <- merge(t1, t2, by = 'Store')
FA3 <- merge(FA2, t3, by = 'Store')
FA4 <- merge(FA3, t4, by = 'Store')
FA5 <- merge(FA4, t5, by = 'Store')
FA6 <- merge(FA5, t6, by = 'Store')
FA7 <- merge(FA6, t7, by = 'Store')
FA8 <- merge(FA7, t8, by = 'Store')
FA9 <- merge(FA8, t9, by = 'Store')
FA10 <- merge(FA9, t10, by = 'Store')
FA11 <- merge(FA10, t11, by = 'Store')
FA12 <- merge(FA11, t12, by = 'Store')
View(FA12)

#4 
names(FA12)[1] <- "Type"
type <- FA12$Type
MeanRev <- FA12[, -(1)]
MeanRev <- apply(MeanRev, 2, mean)
FA13 <- rbind(type, MeanRev)
View(FA13)






