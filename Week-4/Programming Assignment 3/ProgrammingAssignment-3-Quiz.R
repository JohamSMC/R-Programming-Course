source('../best.R')
source('../rankall.R')
source('../rankhospital.R')

best("SC", "heart attack")
# > best("SC", "heart attack")
# [1] "MUSC MEDICAL CENTER"

best("NY", "pneumonia")
# > best("NY", "pneumonia")
# [1] "MAIMONIDES MEDICAL CENTER"

best("AK", "pneumonia")
# > best("AK", "pneumonia")
# [1] "YUKON KUSKOKWIM DELTA REG HOSPITAL"

rankhospital("NC", "heart attack", "worst")
# > rankhospital("NC", "heart attack", "worst")
# [1] "WAYNE MEMORIAL HOSPITAL"

rankhospital("WA", "heart attack", 7)
# > rankhospital("WA", "heart attack", 7)
# [1] "YAKIMA VALLEY MEMORIAL HOSPITAL"

rankhospital("TX", "pneumonia", 10)
# > rankhospital("TX", "pneumonia", 10)
# [1] "SETON SMITHVILLE REGIONAL HOSPITAL"

rankhospital("NY", "heart attack", 7)
# > rankhospital("NY", "heart attack", 7)
# [1] "BELLEVUE HOSPITAL CENTER"

r <- rankall("heart attack", 4)
as.character(subset(r, state == "HI")$hospital)
# > r <- rankall("heart attack", 4)
# > as.character(subset(r, state == "HI")$hospital)
# [1] "CASTLE MEDICAL CENTER"

r <- rankall("pneumonia", "worst")
as.character(subset(r, state == "NJ")$hospital)
# > r <- rankall("pneumonia", "worst")
# > as.character(subset(r, state == "NJ")$hospital)
# [1] "BERGEN REGIONAL MEDICAL CENTER"

r <- rankall("heart failure", 10)
as.character(subset(r, state == "NV")$hospital)
# > r <- rankall("heart failure", 10)
# > as.character(subset(r, state == "NV")$hospital)
# [1] "RENOWN SOUTH MEADOWS MEDICAL CENTER"
