# Project 1 
#################
# Vectors  # Create a dataframe
a1 <- c( "k","k","k","k","k","k", "c", "c", "c", "c", "k", "k", "k", "k", "k", "k", "k", "c", "c", "c", "c" )
b1 <- c( "f", "f", "f", "f", "f", "f", "f", "f", "f", "f", "m", "m", "m", "m", "m", "m", "m", "m", "m", "m", "m" )
c1 <- c( 4, 14, 18, 22, 26, 34, 40, 49, 58, 41, 63, 73, 80, 85, 95, 98, 99, 105, 114, 119, 128 )
d1 <- c( 16.5, 14.8, 15.1, 14.2, 16.0, 13.3, 11.8, 14.8, 15.4, 12.2, 14.3, 11.2, 13.0, 16.0, 14.7, 15.3, 14.2, 16.4, 16.2, 16.0, 13.5 )
e1 <- c( 15.3, 12.2, 12.6, 16.4, 17.4, 15.1, 11.1, 12.7, 11.6, 18.0, 14.8, 15.9, 16.9, 15.9, 16.5, 13.8, 18.1, 11.0, 14.4, 16.7, 14.5 )
f1 <- c( 14.3, 17.8, 12.3, 18.3, 18.5, 15.2, 15.8, 14.9, 13.7, 15.8, 15.8, 19.9, 14.9, 16.0, 12.9, 15.2, 12.2, 15.1, 15.8, 14.1, 11.9 )
g1 <- c( 13.8, 15.7, 13.0, 8.7, 7.6, 7.4, 11.0, 13.9, 7.6, 8.9, 8.0, 6.8, 5.8, 10.5, 9.9, 11.3, 10.3, 12.2, 13.8, 8.3, 12.7 )

#combine into a data frame
data1 <- data.frame( a1, b1, c1, d1, e1, f1, g1 )

# create a data frame with column headings
data2 <- data.frame( RepoxodinOrNot = a1, 
                     Gender = b1, 
                     SubjectNumber = c1,
                     Time1 = d1,
                     Time2 = e1,
                     Time3 = f1,
                     Time4 = g1 )

# subset the data based on bracket notation

#Repoxodin
data3 <- subset(data2, RepoxodinOrNot == "k")
data3 
#Not Repoxodin
data4 <- subset(data2, RepoxodinOrNot == "c")
data4 
#Female Subset 
data5 <- subset(data2, Gender == "f")
data5 
#Male Subset
data6 <- subset(data2, Gender == "m")
data6 

#Summaries 
h1 <- summary.data.frame(data2)
i1 <- summary.data.frame(data3)
j1 <- summary.data.frame(data4)
k1 <- summary.data.frame(data5)
l1 <- summary.data.frame(data6)

#DataFrame with summeries 
data7 <- data.frame( h1, i1, j1, k1, l1 )

# create a data frame with column headings
data7 <- data.frame( Full.DataFrame = h1, 
                     Repoxodin = i1, 
                     Not.Repoxodin = j1,
                     female.Subset = k1,
                     Male.Subset = l1
                    )
head(data7)


library(xlsx)
write.xlsx(data7, file="project1.xlsx", sheetName="sheet1", row.names=FALSE)
