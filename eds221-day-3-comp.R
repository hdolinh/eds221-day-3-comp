### Practicing conditionals and loops ----
# Also a single hashtag works completely fine, but more hastags and dashes 
# Use 4 dashes on the right creates an outline in R script that also becomes collapsable (see arrow on left hand side)

## These are my packages ----
library(tidyverse)

# Refresh boolean operators ----
redwood_tree <- 14
blue_oak <- 47

## Does redwood_tree match a value of 10?
redwood_tree == 10

## Is a blue_oak height greater than a redwood_tree?
blue_oak > redwood_tree

## Negation operator - does redwood_tree not equal 25?
redwood_tree != 25

## Create some basic if statements 
burrito <- 2.4

if(burrito > 2) {
  print("I love burritos!")
}

# if (burrito > 2) 
#  print("I love burritos!")
# else if (burrito == 2.4) 
#  print("Not enough burritos")
# else if (burrito < 2)
#  print("Need more burritos")

## gray whale, blue whale, whale
sbc_observations <- c("blue whale", "gray whale", "whale", "gray whale", "dolphin", "sea lion", "blue whale")

# stringr package is part of the tidyverse
str_detect(sbc_observations, pattern = "whale")

# An example of str_detect() within a conditional statement
phrase <- "I really love tacos!"

if (str_detect(phrase, "data")) {
  print("Cool me too.")
}


# If-else statements 
pika <- 45

if (pika > 60) {
  print("large pika")
} else {
  print("small pika")
}

# Create a string `food <- "I love enchiladas!"`
# Write an if-else statement that prints "Yay burritos" if the string "burritos" is detected in 'food', or prints "What about burritos?" otherwise.

food <- "I love veggie burritos!"

if (str_detect(food, "burritos")) {
  print("Yay burritos")
} else {
  print("What about burritos?")
}

# You can evaluate what is happening by testing it in the console 
# You don't have to make the string a whole word, it can be partial like "bur"

## Create a new stored object called marmot with a value of 2.8 ----
# Write an if - elseif - statement that returns: "small marmont" if marmot is less than 0.5, "medium marmot" if marmot is >= 0.5 AND < 3, and "large marmot" if marmot is >= 3

marmot <- 0.1

if (marmot < 0.5) {
  print("small marmot")
} else if (marmot >= 0.5 & marmot < 3) {
  print("medium marmot")
} else if (marmot >= 3) {
  print("large marmot")
}

## A `switch()` example
species <- "boobs"

switch(species,
       "cat" = print("meow"),
       "lion" = print("roar"),
       "owl" = print("screech"),
       "fox" = print("obnoxious"),
       print("something else"))

# use the print() function at the end to catch all the other species that don't fall under the ones you have specified.

