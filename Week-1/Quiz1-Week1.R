# Question 11
names(hw1_data)

# Question 12
head(hw1_data, 2)

# Question 13
nrow(hw1_data)

# Question 14
tail(hw1_data, 2)

  # Question 15
hw1_data$Ozone[47]

# Question 16
sum(is.na(hw1_data$Ozone))  


# Question 17
noNA <- hw1_data$Ozone[is.na(hw1_data$Ozone) == F]
noNA
mean(noNA) 

# Question 18
subSet <- subset(hw1_data, hw1_data$Ozone > 31 & hw1_data$Temp > 90)
subSet
mean(subSet$Solar.R)

# Question 19
mean(hw1_data$Temp[hw1_data$Month == 6])

# Question 20
max((hw1_data$Ozone[hw1_data$Month == 5]), na.rm = TRUE)

