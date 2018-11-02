#Project 5 code 
# Draw 1000 samples from the following distributions and create histograms for each.
# Be sure to comment about each histogram.  
# Remember all histograms should have four items addressed.

# (a) X ~ N (0, 1) using rnorm function.  (10 pts)
norm <- rnorm(1000)
hist(norm, xlim = c(0, 1))
# for rnorm 
# shape is symmetric 
#center about 0.4 
# spead is from 0 to 1 . range = 0.2
#no unusual 


# (b) X~ Gamma(2, 3) using the rgamma function. (10 pts)
gamma <- rgamma(1000, 2, 3)
hist(gamma, xlim = c(0, 1))
# for rgamma:
# shape is symmetric 
#center about 0.6 
# spead is from 0 to 1 . range = 0.2
#no unusual 

# (c) X+Y where X~ N(5,2) and Y^2(15).  (10 pts) 
x <- rnorm(1000, 5, 2)
y <- x^2*15
hist(x+y, xlim = c(0, 1)) 
# for x+Y: 
# shape is symmetric 
#center about half 
# spead is from 0 to 1 . range = 0.2
#Seems as if the sspread from 0 to 1 is the majority of the points andd drops off after that. 

# (d) X~Binomial(1, 0.3).  (10 pts) 
hist(rbinom(1000, 1, 0.3) , xlim = c(0, 1))
# for rnorm 
# shape is bimodal 
#center about 0.1 
# spead is from 0 to 1 . range = 0.2
#There is a gap inbetween 0.1 to 0.9 

# (e) Calculate the mean of Xi where X1, X2, ..., X~Binomial(1, 0.4) for n = 2, 5, 10, 20, 50, 100.
bin1 <- rbinom(2, 1, 0.4)
bin2 <- rbinom(5, 1, 0.4)
bin3 <- rbinom(10, 1, 0.4)
bin4 <- rbinom(20, 1, 0.4)
bin5 <- rbinom(50, 1, 0.4)
bin6 <- rbinom(100, 1, 0.4)

mbin1 <- mean(bin1)
mbin2 <-mean(bin2)
mbin3 <-mean(bin3)
mbin4 <-mean(bin4)
mbin5 <-mean(bin5)
mbin6 <-mean(bin6)

AllMean <- c(mbin1, mbin2, mbin3, mbin4, mbin5, mbin6)

hist(AllMean, xlim = c(0, 1))
# for All mean 
# shape is bimodal 
#center about 0.3
# spead is from 0.2 to 1 . range = 0.2
#There is a gap inbetween 0.4 to 0.8 and no data at 0 to 0.2

###### AS N increases:
# 1 rnorm: the frequency seems to shrink by 50 as N approaches a milestone of the range. (0.2,0.4,0.6,...,1)
# 2 rgamma: the frequency seems to shrink by 50 as N approaches a milestone of the range. (0.2,0.4,0.6,...,1)
# 3 X+Y: The frequncy seems to stay consistent as N approaches 1.
# 4 rbimom: The freequncy seems to be non existent after the intial start of the spread and by the end it spikes to a level about have of the intial start 
# 5 All Means: The freequency seems to be a 5th of what is was by the time it reaches its max at 1. 




# Here I want a histogram of the mean of the samples.  
#There should be 6 separate histograms with comments on each.  (There are only 5 asked for in the problem)
#Restrict the x-axis to stay at 0 to 1 for all plots.  Comment on the differences between plots as n increases.  (30 pts).