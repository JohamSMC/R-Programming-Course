# Week 3 -- Loop Functions

# Loop functions: lapply, apply, tapply, split, mapply

  # Apply Second argument indicates:
          # 1 Rows are maintained.
          # 2 columns are kept

x <- matrix(c(rep(1,5), rep(2,5), rep(3,5)), 5,3)
x
apply(x, 1, mean)
apply(x, 2, mean)

# > x <- matrix(c(rep(1,5), rep(2,5), rep(3,5)), 5,3)
# > x
# [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    1    2    3
# [3,]    1    2    3
# [4,]    1    2    3
# [5,]    1    2    3
# > apply(x, 1, mean)
# [1] 2 2 2 2 2
# > apply(x, 2, mean)
# [1] 1 2 3

