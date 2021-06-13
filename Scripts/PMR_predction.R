# Clear variables
rm(list=ls())

#loading packages
#library("tidyverse")
#library("dplyr")
#library("factoextra")
#Loading and cleaning dataset

descriptors = as.data.frame(read.csv("Data/descriptors.csv", header = T))
View(descriptors)

# Removing non numerical variables
descriptortidy = descriptors %>%
  select(-c(1:3,22))


# Principal Component Analysis PCA

pca = prcomp(descriptortidy, center = T, scale. = T )
summary(pca)

#

biplot(pca)

# Beautiful visualization with factoextra packaged

fviz_eig(pca)




