

adder <- function(num1, num2) {
  
  return(num1 + num2)
}

adder(1, 2)

# Write a function to convert from Fahrenheit to Kelvin.
# Conversion is:
# Kelvin = (Fahrenheit - 32) * 5 / 9 + 273.15

F_to_K <- function(num1) {
  
  return((num1 - 32) * 5 / 9 + 273.15)
}

F_to_K(32)


# Write a function to convert from Kelvin to Fahrenheit.

K_to_F <- function(num1) {
  return((num1 - 273.15) * 9 / 5 + 32 )
}

K_to_F(273.15)
K_to_F(0)
K_to_F(F_to_K(32))


temps <- c(32, 100, 0)
F_to_K(temps)


for (number in 1:5) {
  print(number)
}


if (K_to_F(273.15) == 32) {
  print("My k_to_F() is correct")
} else if (K_to_F(273.15) == 35) {
  print("My k_to_F() is incorrect from else if")
} else {
  print("Something else")
}

x <-  1
while (x <= 5) {
  print(x)
  x <-  x  + 1
}

library(ggplot2)
ggplot(diamonds, aes(x = carat, y = price, color = cut)) + geom_point()

library(dplyr)
library(gapminder)

# %>% is a pipe, the output of the last comment is used as the next input.
gapminder %>%
  filter(year < 1972) %>%
  group_by(continent, year) %>%
  summarize(mean(gdpPercap))
