#install.packages("tidyverse", dependencies = T)
library("tidyverse")

#Reading csv file
wines = read.csv("~/R Projs/Chemometrics/Data/wines.csv")



# PCA
pca1 = prcomp(wines, center = T, scale. = T)
pca1

biplot(pca1)
