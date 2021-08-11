library(tidyverse)
library(palmerpenguins)

## Afternoon Session ----

### Using summarize() and other for loop functions with penguin data ----  

penguin_summary <- penguins %>% 
  group_by(species, island) %>% 
  summarize(mean_bill_depth <- mean(bill_depth_mm, na.rm = TRUE),
            sd_bill_depth <- sd(bill_depth_mm, na.rm = TRUE))

penguin_subset <- penguins %>% 
  filter(island == "Torgersen") %>% 
  select(species, flipper_length_mm, year)

# filter() is the rows one
# select() is the columns one

penguin_subset

## For loops intro practice ---- 

animals <- c("cat", "dog", "pig", "dog", "dog", "gorilla")

for (i in seq_along(animals)) {
  if (animals[i] == "dog") {
    print("I love dogs!")
  } else {
    print("This is a different animal")
  }
}

# Yay you did it on your first try! Now for storing outputs...

species <- c("dog", "elephant", "goat", "dog", "dog", "elephant")
animal_ages <- vector(mode = "numeric", length = length(species))
age_human <- c(3, 8, 4, 6, 12, 18)

for (i in seq_along(species)) {
  if (species[i] == "dog") {
    animal_ages <- age_human[i] * 7
  } else if (species[i] == "elephant") {
    animal_ages <- age_human[i] * 0.88
  } else if (species[i] == "goat") {
    animal_ages <- age_human[i] * 4.7
  } 
  animal_ages[i] <- animal_ages
}

# remember you don't need print() in for loops
# I have NA....don't know why

## Calculate the mean value of each column in a data frame using mtcars ----

mean_mtcars <- vector(mode = "numeric", length = ncol(mtcars))

for (i in 1:ncol(mtcars)) {
  mean_val <- mean(mtcars[[i]], na.rm = TRUE)
  mean_mtcars <- mean_val
}

mean_mtcars

# not getting a data frame...just one solution? should be getting same answers as apply() below

## Same thing with apply() ----

apply(X = mtcars, 2, mean, na.rm = TRUE)

## Using the purrr functions that are part of the tidyverse ----

map_df(.x = mtcars, .f = mean)

# We just went over 3 different ways to do iterations on our data. We won't be using the for loops that much moving forward and will be using functions that people have created like summarize() and appyly()

