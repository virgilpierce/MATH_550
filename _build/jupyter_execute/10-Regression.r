# Load the ggplot2 package
library(ggplot2)

head(mpg)

ggplot(data = mpg) + geom_point(mapping = aes( x = displ, y = hwy ))

out <- lm( hwy ~ displ, data=mpg)
out

ggplot(data = mpg) + 
    geom_point(mapping = aes( x = displ, y = hwy )) +
    geom_smooth(mapping = aes( x=displ, y = hwy ), method = "lm", col = "red", se=FALSE)


out[['residuals']]

TSE = sum( out[['residuals']]^2)
TSE


