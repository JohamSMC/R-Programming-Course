# Week 3 Quiz

# 1.
# Pregunta 1
# Take a look at the 'iris' dataset that comes with R. The data can be loaded with the code:

library(datasets)
data(iris)

?iris

# There will be an object called 'iris' in your workspace. In this dataset, what is 
# the mean of 'Sepal.Length' for the species virginica? Please round your answer to 
# the nearest whole number.

sapply(split(iris, iris$Species), function(data) colMeans(data[, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")])) 
round(6.588)


# 2.
# Pregunta 2
# Continuing with the 'iris' dataset from the previous Question, what R code 
# returns a vector of the means of 
# the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?
  
apply(iris[, 1:4], 2, mean)


# 3.
# Pregunta 3
# Load the 'mtcars' dataset in R with the following code

library(datasets)
data(mtcars)

# There will be an object names 'mtcars' in your workspace. You can find 
# some information about the dataset by running

?mtcars

# How can one calculate the average miles per gallon (mpg) by number of 
# cylinders in the car (cyl)? Select all that apply.


# ¿Cómo se puede calcular el promedio de millas por galón (mpg) por el número 
# de cilindros en el automóvil (cyl)? Seleccione todas las que correspondan.



unique(mtcars$cyl)
unique(mtcars$mpg)

tapply(mtcars$mpg, mtcars$cyl, mean)
sapply(split(mtcars$mpg, mtcars$cyl), mean)
with(mtcars, tapply(mpg, cyl, mean))


# 4.
# Pregunta 4
# Continuing with the 'mtcars' dataset from the previous Question, what is the 
# absolute difference between the average horsepower of 4-cylinder cars and 
# the average horsepower of 8-cylinder cars?
#   
#   (Please round your final answer to the nearest whole number. Only 
#   enter the numeric result and nothing else.)


tapply(mtcars$hp, mtcars$cyl, mean)
round(abs(209.21429-82.63636), digits = 0)
