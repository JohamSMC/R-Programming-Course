# Week 2

# Functions

  # A function always returns the value of the last line 
above <- function(x, n=10){
  use <- x > n
  x[use]
}

above(1:20, 5)

# > above <- function(x, n=10){
#   +   use <- x > n
#   +   x[use]
#   + }
# > 
#   > above(1:20, 5)
# [1]  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20