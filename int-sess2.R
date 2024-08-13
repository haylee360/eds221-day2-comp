##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##  ~ Interactive session 2  ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#.........................Atomic vectors.........................


x <- c(2.1, 4.2, 3.3, 5.4)
x[c(3, 1)]
x[order(x)] # orders the elements of x
x[c(2.1, 2.9)] # truncates both of these to 2

x[-1] #removes the first element
x[-c(3,1)] #removes the third and first
x[c(-1,2)] #can't mix positive and negative integers in a subset

#........................Logical vectors.........................

x[c(TRUE, TRUE, FALSE, FALSE)] #gives 1st and 2nd, not 3rd and 4th
x[x > 3] #give us all elements of x >3
x[c(TRUE, FALSE)] #recyling the rules, looping TF
x[c(TRUE, TRUE, NA, FALSE)] #replaces 3rd value w NA
x[] #returns the original vector
x[0] #returns a zero-length vector

#....................Subsetting and assignment...................

x <- 1:5
x[c(1, 2)] <- 2:3 # replaced 1st and 2nd elements with 2 and 3
x

x[-1] <- 4:1
x #got rid of first element then went backwards

x[c(T, F, NA)] <- 1 #recycling and updating values w 1
x

df <- data.frame(a = c(1, 10, NA))
df$a[df$a < 5] <- 0
df$a

#..............Subsetting rows based on conditions...............

mtcars[mtcars$gear == 5, ] #subset mtcars to all of the rows where that car has 5 gears
mtcars[mtcars$gear == 5 & mtcars$cyl == 4, ] #all rows with gear 5 and cyl 4
subset(mtcars, gear == 5)
subset(mtcars, gear == 5 & cyl == 4)

ggplot(data = subset(mtcars, gear == 5 & cyl == 4), aes(x = mpg, y = disp)) + geom_point() 

# remove columns
df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3]) #letters is a vectors of all 26 letters
df$z <- NULL #removes the column altogether
df[c("x", "y")] #subset based on column names
df[setdiff(names(df), "z")] #if you know the columns you don't want
# the difference between the names of the data frame (xyz) and z. So just x and y 
