# Week 1 Matrices 

m <- matrix(nrow = 2, ncol = 3)
m
dim(m)
attributes(m)

# > m <- matrix(nrow = 2, ncol = 3)
# > m
# [,1] [,2] [,3]
# [1,]   NA   NA   NA
# [2,]   NA   NA   NA
# > dim(m)
# [1] 2 3
# > attributes(m)
# $dim
# [1] 2 3

m <- matrix(1:6, nrow = 2, ncol = 3)
m

# > m <- matrix(1:6, nrow = 2, ncol = 3)
# > m
# [,1] [,2] [,3]
# [1,]    1    3    5
# [2,] 

  # Cbind and Rbind

# x <-  1:3
# y <- 10:12
# cbind(x,y)
# rbind(x,y)
# 
# > x <-  1:3
# > y <- 10:12
# > cbind(x,y)
# x  y
# [1,] 1 10
# [2,] 2 11
# [3,] 3 12
# > rbind(x,y)
# [,1] [,2] [,3]
# x    1    2    3
# y   10   11   12