# Dates and Times

    # Dates

date <- as.Date("1970-01-01")
#               "YYY-MM_DD"   
# > date <- as.Date("1970-01-01")
# > date
# [1] "1970-01-01"

unclass(date)
# > unclass(date)
# [1] 0

unclass(as.Date("1970-01-02"))
# > unclass(as.Date("1970-01-02"))
# [1] 1

unclass(as.Date("1970-01-03"))
# > unclass(as.Date("1970-01-03"))
# [1] 2

    # TIMES

timeExample <- Sys.time()
timeExample

# > timeExample <- Sys.time()
# > timeExample
# [1] "2021-01-31 20:25:00 -05"
# > 

    # POSIX-lt
p <- as.POSIXlt(timeExample)
names(unclass(p))
p
p$mday
p$mon
p$year
p$zone

# > p <- as.POSIXlt(timeExample)
# > names(unclass(p))
# [1] "sec"    "min"    "hour"   "mday"   "mon"    "year"   "wday"   "yday"   "isdst" 
# [10] "zone"   "gmtoff"
# > p
# [1] "2021-01-31 20:25:00 -05"
# > p$mday
# [1] 31
# > p$mon
# [1] 0
# > p$year
# [1] 121
# > p$zone
# [1] "-05"

        # POSIX-ct
timeExample2 <- Sys.time()
timeExample2
# > timeExample2 <- Sys.time()
# > timeExample2
# [1] "2021-01-31 20:33:07 -05"

unclass(timeExample2)
# > unclass(timeExample2)
# [1] 1612143187

timeExample2$sec
# > timeExample2$sec
# Error in timeExample2$sec : $ operator is invalid for atomic vectors

p <- as.POSIXlt(timeExample2)
p$sec
# > p <- as.POSIXlt(timeExample2)
# > p$sec
# [1] 7.055862

datesString <- c("Enero 10, 2012 10:40", "Diciembre 9, 2011 9:10")
x <- strptime(datesString, "%B %d, %Y %H:%M")
x
class(x)
# > datesString <- c("Enero 10, 2012 10:40", "Diciembre 9, 2011 9:10")
# > x <- strptime(datesString, "%B %d, %Y %H:%M")
# > x
# [1] "2012-01-10 10:40:00 -05" "2011-12-09 09:10:00 -05"
# > class(x)
# [1] "POSIXlt" "POSIXt"


    # Operations on DATES and TIMES

x <- as.Date("2012-01-01")
y <- strptime("9 Enero 2011 11:34:21", "%d %b %Y %H:%M:%S")
x-y
# > x <- as.Date("2012-01-01")
# > y <- strptime("9 Enero 2011 11:34:21", "%d %b %Y %H:%M:%S")
# > x-y
# Error in x - y : argumento no-numérico para operador binario
# Además: Warning message:
#   Métodos incompatibles ("-.Date", "-.POSIXt") para "-"

x <- as.POSIXlt(x)
x-y
# > x <- as.POSIXlt(x)
# > x-y
# Time difference of 356.3095 days

x <- as.POSIXct("2012-10-25 01:00:00")
y <- as.POSIXct("2012-10-25 09:00:00", tz = "GMT")
y-x
# > x <- as.POSIXct("2012-10-25 01:00:00")
# > y <- as.POSIXct("2012-10-25 09:00:00", tz = "GMT")
# > y-x
# Time difference of 3 hours


  # Useful functions

weekdays(timeExample)
# > weekdays(timeExample)
# [1] "domingo"

months(timeExample)
# > months(timeExample)
# [1] "enero"

quarters(timeExample) # ("Q1", "Q2", "Q3", "Q4")
# > quarters(timeExample)
# [1] "Q1"

