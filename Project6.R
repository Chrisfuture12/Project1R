# Write code to find the zeros of the following functions. 
#Also find all of the zeros recording, the starting value, number of iterations and the resulting zero. 
#Plotting it might help 


# (a) f(x)=(2^e^x^2) - 1
# Derivitive: (8*e^x^2)*x 

fun2 <- function(xx) {
  y2 <- 2^exp(xx)^2 - 1
  return(y2)
}

fun2D <- function(xx) {
  y2 <- (8*exp(xx)^2)*xx
  return(y2)
}


fun2D0 <- function(xg2){
  x21 <- xg2 - fun2(xg2) / fun2D(xg2)
  return(x21)
}

xg2 <- 1 #intial guess: 
error2 <- 1 # Our accuracy or error criterion
xlast <- 0 # Need a way to assess accuracy 
count2 <- 0 #Crate a counter variable

while( error2 > 0.0001) {
  xg2 <- fun2D0(xg2) #Take next step
  error2 <- (xzero2 - xg2)^2 #Evaluate how close to last step
  xzero <- xg2  # Store off value for accuracy 
  count2 <- count2 +1 # Increment the counter 
}

count2
error2
xg2

# (b) f (x) = x*ln(x/15) + x^2 - x for x > 0 
# Derivitive: 2x + ln(x/15)
fun3 <- function(x3) {
  y3 <- x3*log(x3/15) + x3^2 - x3
  
  return(y3)
}

fun3D <- function(x3) {
  y3 <- 2*x3 + log(x/15)
  return(y3)
}


fun3D0 <- function(xg1){
  x22 <- xg3 - fun3(xg3) / fun3D(xg3)
  return(x22)
}

xg3 <- 1 #intial guess: 
error3 <- 1 # Our accuracy or error criterion
xlast <- 0 # Need a way to assess accuracy 
count3 <- 0 #Crate a counter variable

while( error3 > 0.0001) {
  xg3 <- fun3D0(xg3) #Take next step
  error3 <- (xzero3 - xg3)^2 #Evaluate how close to last step
  xzero <- xg3  # Store off value for accuracy 
  count3 <- count3 +1 # Increment the counter 
}

count3
error3
xg3

# (c) f(x) = x^2 ??? 251/187x + 82/187
# derivitive: 2x -251/187 

fun1 <- function(x) {
  y1 <- x^2 - (251/187)*x + (82/187) 
  return(y1)
}

fun1D <- function(x) {
  y1 <- 2*x -251/187 
  return(y1)
}


fun1D0 <- function(xg1){
   x2 <- xg1 - fun1(xg1) / fun1D(xg1)
   return(x2)
}

xg1 <- 1 #intial guess: 
error1 <- 1 # Our accuracy or error criterion
xlast <- 0 # Need a way to assess accuracy 
count1 <- 0 #Crate a counter variable

while( error1 > 0.0001) {
  xg1 <- fun1D0(xg1) #Take next step
  error1 <- (xzero1 - xg1)^2 #Evaluate how close to last step
  xzero <- xg1  # Store off value for accuracy 
  count1 <- count1 +1 # Increment the counter 
}

count1
error1
xg1

# Note:  You must use a while loop to do the computations.  
#Simply using a built-in R function is not acceptable.  Each question is worth 20 points.