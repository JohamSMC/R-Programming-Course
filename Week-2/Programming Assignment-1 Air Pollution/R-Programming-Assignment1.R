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
