# Week 1 Factors

x <- factor(c("yes", "yes", "no", "yes", "no"))
x
table(x)
unclass(x)
attr(x,"levels")

# > x <- factor(c("yes", "yes", "no", "yes", "no"))
# > x
# [1] yes yes no  yes no 
# Levels: no yes  # LEVELS for DEFAULT
# > table(x)
# x
# no yes 
# 2   3 
# > unclass(x)
# [1] 2 2 1 2 1
# attr(,"levels")
# [1] "no"  "yes"
# > attr(x,"levels")
# [1] "no"  "yes"

x <- factor(c("yes", "yes", "no", "yes", "no"),
            levels = c("yes", "no"))
x

# > x <- factor(c("yes", "yes", "no", "yes", "no"),
#               levels = c("yes", "no"))
# > x
# [1] yes yes no  yes no 
# Levels: yes no   # LEVELS 