# Week 3 -- Loop Functions

# Loop functions: lapply, apply, tapply, split, mapply

    # Apply Supports multiple lists


# x <- list(rep(1,4), rep(2,3), rep(3,2), rep(4,1))
# x
# y <- mapply(rep, 1:4, 4:1)
# y
# 
# > x <- list(rep(1,4), rep(2,3), rep(3,2), rep(4,1))
# > x
# [[1]]
# [1] 1 1 1 1
# 
# [[2]]
# [1] 2 2 2
# 
# [[3]]
# [1] 3 3
# 
# [[4]]
# [1] 4
# 
# > y <- mapply(rep, 1:4, 4:1)
# > y
# [[1]]
# [1] 1 1 1 1
# 
# [[2]]
# [1] 2 2 2
# 
# [[3]]
# [1] 3 3
# 
# [[4]]
# [1] 4
