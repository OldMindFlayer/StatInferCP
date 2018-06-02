# setwd("C:/Workspace/Rscripts/Projects/CourseraLearning/StatInferCP")
library(tidyverse)

dataset <- as_tibble(ToothGrowth)


str(dataset)
table(dataset$supp, dataset$dose)

test0 <- t.test(filter(dataset, supp == "VC")$len, 
                filter(dataset, supp == "OJ")$len,
                alternative = "two.sided",
                mu = 0,
                paired = FALSE,
                conf.level = 0.95)

test1 <- t.test(filter(dataset, dose == 0.5)$len,
                filter(dataset, dose == 1)$len)
test2 <- t.test(filter(dataset, dose == 1)$len,
                filter(dataset, dose == 2)$len)
test3 <- t.test(filter(dataset, dose == 0.5)$len,
                filter(dataset, dose == 2)$len)