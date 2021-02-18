# Week 4
  # R Profiler
      # Count Run Time

system.time({
  n <- 1000
  r <- numeric(n)
  for (i in 1:n) {
    x <- rnorm(n)
    r[i] <- mean(x)
  }
})
# > system.time({
#   +   n <- 1000
#   +   r <- numeric(n)
#   +   for (i in 1:n) {
#     +     x <- rnorm(n)
#     +     r[i] <- mean(x)
#     +   }
#   + })
# user  system elapsed 
# 0.110   0.008   0.118