# Clear variables
rm(list=ls())

#loading packages
#library("tidyverse")
library("dplyr")

#Loading and cleaning dataset

descriptors = as.data.frame(read.csv("Data/descriptors.csv", header = T))
View(descriptors)

descriptortidy = descriptors %>%
  select(-c(1:3,22))

View(descriptortidy)

# Principal Component Analysis PCA

pca = pc


?prcomp
