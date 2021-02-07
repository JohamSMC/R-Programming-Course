# Week 3 -- Loop Functions

# Loop functions: lapply, apply, tapply, split, mapply

    # Tapply:  It is used to apply a function to a subset of a vector.

x <- c(rnorm(10), runif(10), rnorm(10))
f <- gl(3,10)
f
tapply(x, f, mean)
# > x <- c(rnorm(10), runif(10), rnorm(10))
# > f <- gl(3,10)
# > f
# [1] 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2 3 3 3 3 3 3 3 3 3 3
# Levels: 1 2 3
# > tapply(x, f, mean)
# 1          2          3 
# -0.2732675  0.5434702 -0.1199338


tapply(x, f, mean, simplify = FALSE)
typeof(tapply(x, f, mean, simplify = FALSE))
tapply(x, f, mean, simplify = TRUE)
typeof(tapply(x, f, mean, simplify = TRUE))
#> tapply(x, f, mean, simplify = FALSE)
# $`1`
# [1] -0.2106635
# 
# $`2`
# [1] 0.483519
# 
# $`3`
# [1] 0.03165383
# 
# > typeof(tapply(x, f, mean, simplify = FALSE))
# [1] "list"
# > tapply(x, f, mean, simplify = TRUE)
# 1           2           3 
# -0.21066347  0.48351899  0.03165383 
# > typeof(tapply(x, f, mean, simplify = TRUE))
# [1] "double"



tapply(x, f, range)
# > tapply(x, f, range)
# $`1`
# [1] -1.132675  1.845213
# 
# $`2`
# [1] 0.08824248 0.78260627
# 
# $`3`
# [1] -2.150885  1.550837