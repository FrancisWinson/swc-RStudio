5 + 3

# Press Ctrl + Enter to run the line or a highlighted sequence of code lines.
# Press Source to run the whole script.

# Load and analyze cats.

cats <- read.csv("cats.csv", as.is = TRUE)
cats$likes_string <- as.logical(cats$likes_string)
str(cats)
cats$weightDouble <- cats$weight * 2
cbind(cats, cats)
colnames(cats <- ("coat", "weight", "likes_string", "weightDouble"))

# list can hold any type of data.
ourlist <- list("text", 1, TRUE, NA, 4L, 5 + 1i)
class(ourlist)
ourlist[1]
ourlist[[1]]
names(ourlist)
ourlist$'first_element'
ourlist$'1st'

vector <-  4:10
vector[1]
length(vector)
vector[length(vector)]
vector[-5]
vector[1:3]
vector[c(1, 7, 3)]
vector[3:5]
vector <= 6
bool <- vector <= 6
vector[bool]
vector[vector <= 6]
text <- c("text1", "more stuff")
text[1]

matrix_example <- matrix(1:10, nrow = 2, ncol = 5)
matrix_example * 8
matrix_example[1]
matrix_example[,3]
matrix_example[2,]
matrix_example[1,2]
matrix_example[1, 2:5]
dim(matrix_example)

# Fill by colulmn.
matrix_1 <- matrix(1:50, nrow = 10, ncol = 5)
matrix_1

matrix_1 <- matrix(1:50, nrow = 10, ncol = 5, byrom = TRUE)

list_1 <- list(dataTypes = c("numeric", "integer", "character", "logical", "complex"), dataStructures = c("data.frame", "list", "vector", "matrix"))
list_1

library(gapminder)
gap <- gapminder
str(gap)
head(gap)
tail(gap)
gap[1000:1040, ]
gap$gdp <- gap$pop * gap$gdpPercap
gap$gdpbillions <- gap$gdp / 1e9
gap$gdpbillions
head(gap)
gap$country == "Canada"
length(gap$country == "Canada")
gap[gap$country == "Canada",]

sum(1:5)
mean(1:5)

# Get the DGP for 1972.
unique(gap$year)
# Get all the data for 1972. 
data_1972 <- gap[gap$year == 1972, ]
head(data_1972)

# Compute the mean of the GDP column for this data.
mean_DGP_1972 <- mean(data_1972$gdp)
mean_DGP_1972

# Get all the data for Albania.
data_Albania <- gap[gap$country == "Albania", ]
# Compute the maximum pop of Albania (Hint: Use max function).
max_pop_Albania <- max(data_Albania$pop)
max_pop_Albania

# The function which() return the numerical index where some condition is TRUE. 
# Use which() to find which year Albania's population was the maximum.
vector_2 <-  2:5
which(vector == 4)
data_Albania$year[which(data_Albania$pop == max(data_Albania$pop))]

wrong <- gap[gap$country == c("China", "Cambodia", "Canada"), ]
View(wrong)
right <- gap[gap$country %in% c("China", "Cambodia", "Canada"), ]
View(right)
c("a", "a","b", "a", "b", "c") == c("a", "b")
c("a", "a","b", "a", "b", "c") == c("a", "b", "a", "b", "a", "b")
c("a", "a","b", "a", "b", "c") %in% c("a", "b")

letters <- c("a", "a", "b", "a", "b", "c")
letters[letters %in% c("a", "b")]
