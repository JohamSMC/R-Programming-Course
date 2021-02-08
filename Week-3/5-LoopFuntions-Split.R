# Week 3 -- Loop Functions

# Loop functions: lapply, apply, tapply, split, mapply

  # Split:  

# Second factor as a factor to separate into groups and 
# then apply the function to the different groups.

x <- sample(1:50, 20)
f <- gl(2,10)
# split(x, f)
# > x <- sample(1:50, 20)
# > f <- gl(2,10)
# > split(x, f)
# $`1`
# [1] 47 44 17  8  9 39 14 24 37  5
# 
# $`2`
# [1] 38 41 15 40 42 20 31 25 50 27


library(datasets)
head(airquality)
# > library(datasets)
# > head(airquality)
# Ozone Solar.R Wind Temp Month Day
# 1    41     190  7.4   67     5   1
# 2    36     118  8.0   72     5   2
# 3    12     149 12.6   74     5   3
# 4    18     313 11.5   62     5   4
# 5    NA      NA 14.3   56     5   5
# 6    28      NA 14.9   66     5   6

s <- split(airquality, airquality$Month)                            # Separar el dataset por la columna 'Month'
lapply(s, function(x) colMeans(x[,c("Ozone", "Solar.R", "Wind")]) ) # Calcular el promedio de las demas columnas por mes
# > s <- split(airquality, airquality$Month)  # Separar el dataset por la columna 'Month'
# > lapply(s, function(x) colMeans(x[,c("Ozone", "Solar.R", "Wind")]) )
# $`5`
# Ozone  Solar.R     Wind 
# NA       NA 11.62258 
# 
# $`6`
# Ozone   Solar.R      Wind 
# NA 190.16667  10.26667 
# 
# $`7`
# Ozone    Solar.R       Wind 
# NA 216.483871   8.941935 
# 
# $`8`
# Ozone  Solar.R     Wind 
# NA       NA 8.793548 
# 
# $`9`
# Ozone  Solar.R     Wind 
# NA 167.4333  10.1800 


sapply(s, function(x) colMeans(x[,c("Ozone", "Solar.R", "Wind")]) )
sapply(s, function(x) colMeans(x[,c("Ozone", "Solar.R", "Wind")], na.rm = TRUE) )
# > sapply(s, function(x) colMeans(x[,c("Ozone", "Solar.R", "Wind")]) )
# 5         6          7        8        9
# Ozone         NA        NA         NA       NA       NA
# Solar.R       NA 190.16667 216.483871       NA 167.4333
# Wind    11.62258  10.26667   8.941935 8.793548  10.1800
# > sapply(s, function(x) colMeans(x[,c("Ozone", "Solar.R", "Wind")], na.rm = TRUE) )
# 5         6          7          8         9
# Ozone    23.61538  29.44444  59.115385  59.961538  31.44828
# Solar.R 181.29630 190.16667 216.483871 171.857143 167.43333
# Wind     11.62258  10.26667   8.941935   8.793548  10.18000


income <- sample(100:1000, 24)
gender <- gl(2, 12, labels = c("man","woman"))
length(gender)
stratum <- gl(3, 8, labels = c("stratum1","stratum2", "stratum3"))
length(stratum)

interaction(gender, stratum)
# > income <- sample(100:1000, 24)
# > gender <- gl(2, 12, labels = c("man","woman"))
# > length(gender)
# [1] 24
# > stratum <- gl(3, 8, labels = c("stratum1","stratum2", "stratum3"))
# > length(stratum)
# [1] 24
# > 
#   > interaction(gender, stratum)
# [1] man.stratum1   man.stratum1   man.stratum1   man.stratum1   man.stratum1   man.stratum1   man.stratum1   man.stratum1   man.stratum2  
# [10] man.stratum2   man.stratum2   man.stratum2   woman.stratum2 woman.stratum2 woman.stratum2 woman.stratum2 woman.stratum3 woman.stratum3
# [19] woman.stratum3 woman.stratum3 woman.stratum3 woman.stratum3 woman.stratum3 woman.stratum3
# Levels: man.stratum1 woman.stratum1 man.stratum2 woman.stratum2 man.stratum3 woman.stratum3

str(split(income, list(gender, stratum)))
# > str(split(income, list(gender, stratum)))
# List of 6
# $ man.stratum1  : int [1:8] 751 183 264 220 385 650 884 618
# $ woman.stratum1: int(0) 
# $ man.stratum2  : int [1:4] 317 757 586 709
# $ woman.stratum2: int [1:4] 126 571 258 631
# $ man.stratum3  : int(0) 
# $ woman.stratum3: int [1:8] 779 111 613 339 372 578 170 776

str(split(income, list(gender, stratum), drop = TRUE))
# > str(split(income, list(gender, stratum), drop = TRUE))
# List of 4
# $ man.stratum1  : int [1:8] 252 664 350 347 616 168 349 413
# $ man.stratum2  : int [1:4] 211 898 852 893
# $ woman.stratum2: int [1:4] 102 395 144 506
# $ woman.stratum3: int [1:8] 901 338 107 550 691 299 630 777
