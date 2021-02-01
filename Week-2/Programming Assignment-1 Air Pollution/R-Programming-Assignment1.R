# Part 1
# Write a function named 'pollutantmean' that calculates the mean of a
# pollutant (sulfate or nitrate) across a specified list of monitors.
# The function 'pollutantmean' takes three arguments: 'directory', 'pollutant',
# and 'id'. Given a vector monitor ID numbers, 'pollutantmean' reads that
# monitors' particulate matter data from the directory specified in the
# 'directory' argument and returns the mean of the pollutant across all of the
# monitors, ignoring any missing values coded as NA. A prototype of the
# function is as follows


pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## Set the path where the 'specdata' folder is located
  workPath = "/home/sebastian/Documentos/CURSOS/Cursos-Coursera/R-Programming/Week-2/Programming Assignment-1 Air Pollution/specdata"
  
  ## obtaining the required files by storing them into mydata variable
  mydata <- list.files(path = workPath)[id]
  
  ## reading the .csv files of mydata
  readfiles <- lapply(mydata, read.csv)
  
  ## combine all the files into one file so that we can calculate the mean at once
  combine <- do.call(rbind, readfiles)
  
  ##calculate the mean without the NA values
  mean(combine[, pollutant], na.rm = TRUE)
}

  # Tests
pollutantmean("specdata", "sulfate", 1:10)
# > pollutantmean("specdata", "sulfate", 1:10)
# [1] 4.064128

pollutantmean("specdata", "nitrate", 70:72)
# > pollutantmean("specdata", "nitrate", 70:72)
# [1] 1.706047



# Part 2
# Write a function that reads a directory full of files and reports the number 
# of completely observed cases in each data file. The function should return a 
# data frame where the first column is the name of the file and the second 
# column is the number of complete cases. A prototype of this function follows

complete <- function(directory, id = 1:332) {
  
  ## Set the path where the 'specdata' folder is located
  workPath = "/home/sebastian/Documentos/CURSOS/Cursos-Coursera/R-Programming/Week-2/Programming Assignment-1 Air Pollution/specdata"
  
  ## obtaining the required files by storing them into mydata variable
  mydata <- list.files(path = workPath)[id]
  
  ## create an empty vector
  frows <- c()
  counter <- 1
  
  for(i in mydata) {
    
    ## storing each .csv file without the NA values into fineobject variable
    fineobject <- na.omit(read.csv(i))
    
    ## store the number of the fineobject rows in the empty f(ine)rows vector
    frows[counter] <- nrow(fineobject)
    counter <- counter + 1
  }
  ## creating and printing the f(ine)list
  flist <- data.frame("id" = id, "nobs" = frows)
  print(flist)
}

  # TESTS

complete("specdata", 1)
# > complete("specdata", 1)
# id nobs
# 1  1  117

complete("specdata", c(2, 4, 8, 10, 12))
# > complete("specdata", c(2, 4, 8, 10, 12))
# id nobs
# 1  2 1041
# 2  4  474
# 3  8  192
# 4 10  148
# 5 12   96

complete("specdata", 30:25)
# > complete("specdata", 30:25)
# id nobs
# 1 30  932
# 2 29  711
# 3 28  475
# 4 27  338
# 5 26  586
# 6 25  463

