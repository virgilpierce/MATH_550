plot(cars)

# for testing use this
students <- round(rnorm(20, 25, 5))

# for class use this
# students <- c() 

students

summary(students)

var(students); sqrt(var(students))

# define a variable for the mean we will consistently use bar for sample mean
# again note I use the <- assignment rather than =
ybar <- mean(students)

# R can then do the arithmetic and when we combine a list of numbers with a single number and square it, it knows what we mean.
(students - ybar)^2

# Then as we said, we sum over all of these and then divide by the number of them
# minus 1

sum( (students - ybar)^2 ) / ( length(students) - 1 )

sum(students - ybar )

sum( abs(students - ybar)) / (length(students) - 1 )

hist(students, 20)

boxplot(students, horizontal=TRUE)
# Note the use of = for a parameter instead of <-

library(readxl) # for reading Excel files
library(ggplot2) # for making nice plots - part of the tidyverse

supermarket <- read_excel("Supermarket Transactions.xlsx", sheet = 2)

# head() gives us just the first part of a dataframe
head(supermarket)

colnames(supermarket)

sapply(supermarket, class)

table(supermarket$Gender)

# Note that because the feature Marital Status has a space in it, we have to use quotes to refer to it:
table( supermarket$`Marital Status`, supermarket$Gender) 

# Here to make this easier to read we are going to do the operation in two separate commands; 
table1 <- table(supermarket$`Marital Status`, supermarket$Gender, supermarket$`State or Province`)
ftable(table1)

table2 <- table(supermarket$`Marital Status`, supermarket$Gender)
prop.table(table2)

# Note in this one the direction of the quotes matter
ggplot(supermarket) + 
  geom_bar(mapping = aes(x=`State or Province`)) + 
  theme(axis.text.x=element_text(angle=45, hjust=1))

head(mpg)

ggplot(data = mpg) + geom_point(mapping = aes( x = displ, y = hwy ))

ggplot(data = mpg) + 
    geom_point(mapping = aes( x = displ, y = hwy, color = class ))


