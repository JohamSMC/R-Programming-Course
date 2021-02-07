# Week 3 -- Loop Functions

# Loop functions: lapply, apply, tapply, split, mapply

    # Lapply    Applies a function to all elements,
    #           always returns a list

x <- 1:4
lapply(x, runif)

# > x <- 1:4
# > lapply(x, runif)
# [[1]]
# [1] 0.02559028
# 
# [[2]]
# [1] 0.1373086 0.4492838
# 
# [[3]]
# [1] 0.5936738 0.9997438 0.3696477
# 
# [[4]]
# [1] 0.73265862 0.07647657 0.38144778 0.45289870

    # Lapply anonymous function
x <- 1:5
lapply(x, function(y) {
  y*2
})

# > x <- 1:5
# > lapply(x, function(y) {
#   +   y*2
#   + })
# [[1]]
# [1] 2
# 
# [[2]]
# [1] 4
# 
# [[3]]
# [1] 6
# 
# [[4]]
# [1] 8
# 
# [[5]]
# [1] 10

   # Sapply  Attempting to return the simplest element type

x <- list(a=1:5, b=5:10, c=10:15)
typeof(lapply(x, mean))
lapply(x, mean)
typeof(sapply(x, mean))
sapply(x, mean)

# > x <- list(a=1:5, b=5:10, c=10:15)
# > typeof(lapply(x, mean))
# [1] "list"
# > lapply(x, mean)
# $a
# [1] 3
# 
# $b
# [1] 7.5
# 
# $c
# [1] 12.5
# 
# > typeof(sapply(x, mean))
# [1] "double"
# > sapply(x, mean)
# a    b    c 
# 3.0  7.5 12.5 
