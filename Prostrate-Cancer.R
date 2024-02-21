# Prostrate cancer normalization

# Inoput the dataset in R, 10 prostrate cancer and 10 normal prostrate 

# Library affy is the package to do the microarray analysis
library(affy)

# Setting the working directory
setwd("/Users/pawar/Desktop/GSE62872_RAW")

# Read the data files
data <- ReadAffy()

# Box plot the raw data
boxplot(data)

# Apply RMA normalization to raw data
normalized <- rma(data)
normalized_data <- exprs(normalized)
boxplot(normalized_data)



