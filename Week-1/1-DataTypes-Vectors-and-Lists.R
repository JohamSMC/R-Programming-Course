# Week 1 - Vectors and Lists

    # Explicit Coercion

x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)

# > x <- 0:6
# > class(x)
# [1] "integer"
# > as.numeric(x)
# [1] 0 1 2 3 4 5 6
# > as.logical(x)
# [1] FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
# > as.character(x)
# [1] "0" "1" "2" "3" "4" "5" "6"

# --------------------------------------------------------------

x <- c("a", "b", "c")
as.numeric(x)
as.logical(x)
as.complex(x)

# > x <- c("a", "b", "c")
# > as.numeric(x)
# [1] NA NA NA
# Warning message:
#   NAs introducidos por coerción 
# > as.logical(x)
# [1] NA NA NA
# > as.complex(x)
# [1] NA NA NA
# Warning message:
#   NAs introducidos por coerción 

    # LIST

# x <- list(1, "a", TRUE, T, FALSE, F, 1+4i)
# x

# > x <- list(1, "a", TRUE, T, FALSE, F, 1+4i)
# > x
# [[1]]
# [1] 1
#
# [[2]]
# [1] "a"
#
# [[3]]
# [1] TRUE
#
# [[4]]
# [1] TRUE
#
# [[5]]
# [1] FALSE
#
# [[6]]
# [1] FALSE
#
# [[7]]
# [1] 1+4i
