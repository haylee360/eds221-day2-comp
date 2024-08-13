##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##  ~ Making and Indexing Data in R  ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#............................Vectors.............................

# character vector ----
dogs <- c("teddy", "khora", "waffle", "banjo")
typeof(dogs)
class(dogs)

# numeric vector ----
weights <- c(50, 55, 25, 35)
typeof(weights) # more specific than class? 
class(weights)

# integer vector ----
dog_age <- c(5L, 6L, 1L, 7L)
typeof(dog_age)
class(dog_age)
is.numeric(dog_age) # check with a logical

# The broadest of all in a vector wins, i.e. that will be the class of the whole vector

dog_info <- c("teddy, 50, 5L")
typeof(dog_info)
class(dog_info)
is.character(dog_info)

# Named elements ----
dog_food <- c(teddy = "purina", 
              khora = "alpo", 
              waffle = "fancy feast", 
              banjo = "blue diamond")
typeof(dog_food)
class(dog_food)

# Accessing bits of vectors ----
dog_food[2] 
dog_food["khora"]
dog_food[2:4]

# A warm up for for loops ----
# Create a vector of car colors observed
cars <- c("red", "orange", "white", "blue", "green", "silver", "black")

# this is called indexing 
i <- 4
cars[i]

i <- seq(1:3)
cars[i]

# We can update elements of a vector directly (mutable)
cars[3] <- "BURRITOS!"
cars

#............................Matrices............................

# Creating matrices ----
fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9), ncol = 2, nrow = 2, byrow = FALSE)
fish_size

typeof(fish_size) #returns the class of values
class(fish_size) # returns matrix / array
# class here tells about the structure of the data, not the data itself

dog_walk <- matrix(c("teddy", 5, "khora", 10), ncol = 2, nrow = 2, byrow = FALSE)
dog_walk
typeof(dog_walk) # character
class(dog_walk) # matrix / array

# Accessing pieces of matrices ----
whale_travel <- matrix(data = c(31.8, 1348, 46.9, 1587), nrow = 2, ncol = 2, byrow = TRUE)
whale_travel
whale_travel[1,2] # Row 1, Column 2

# If you leave any element blank and leave the comma, it will return all values from the other element
whale_travel[2, ]

#If you give only one element, it's the position in the matrix **as if populated by column**
whale_travel[3]

#..............................Lists.............................

urchins <- list("blue", c(1, 2, 3), c("a cat", "a dog"), 5L)
urchins

# Accessing pieces of a list ----
urchins[[2]] # returns items stored
urchins[2] # returns the list

# Naming list items ----
tacos <- list(topping = c("onion", "cilantro", "guacamole"), filling = c("beans", "meat", "veggie"), price = c(6.75, 8.25, 9.50))
tacos

#these two do the same thing
tacos[[2]]
tacos$filling
tacos$filling[1] # to access a single item in a list

#..........................Data Frames...........................

fruit <- data.frame(type = c("apple", "banana", "peach"), mass = c(130, 195, 150))
fruit
class(fruit) #data.frame

# Accessing elements from a data frame
# use row#, col# 
fruit[1,2]
fruit[2,1] <- "pineapple"
fruit
