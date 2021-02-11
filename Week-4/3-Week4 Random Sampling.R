# Week 4
    # Random Sampling

set.seed(1)
sample(1:10, 4)
sample(1:10, 4)
sample(letters, 5)
sample(LETTERS, 5)
sample(1:10) # Permutation
sample(1:10)
sample(1:10, replace = TRUE)
# > set.seed(1)
# > sample(1:10, 4)
# [1] 9 4 7 1
# > sample(1:10, 4)
# [1] 2 7 3 6
# > sample(letters, 5)
# [1] "r" "s" "a" "u" "w"
# > sample(LETTERS, 5)
# [1] "J" "V" "N" "Z" "G"
# > sample(1:10) # Permutation
# [1]  9  5 10  1  7  8  6  2  3  4
# > sample(1:10)
# [1]  9  1  4  3  6  2  5  8 10  7
# > sample(1:10, replace = TRUE)
# [1]  4 10  9  7  6  9  8  9  7  8