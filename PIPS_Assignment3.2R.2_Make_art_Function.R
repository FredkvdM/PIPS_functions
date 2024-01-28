# 2024 Programming in Psychological Science (PIPS)
# PIPS Assignment 3.2R.2 - The make_art function
#
# Date            Programmer              Descriptions of Change
# ====         ================           ======================
# 28-Jan-24   Frederik van der Meer            Original code
#
#-------------------------------------------------------------------------------

library(ggplot2)
library(devtools)

# The make_art function. A random seed (number) can included as an argument.
make_art <- function(seed = 10) {
  my_art <- ggplot() +
    geom_segment(aes(x = 1:100, xend = seed, y = seq(1, 10, length.out = 100), 
                     yend = seed + 5), colour = "#750052") +
    geom_curve(aes(x = 1:100, xend = seed, y = seq(1, 10, length.out = 100), 
                   yend = seed + 5), colour = "#007680") +
    geom_curve(aes(x = 10:109, xend = seed, y = seq(10, 19, length.out = 100), 
                   yend = seed + 5), colour = "#cfcf60") +
    geom_curve(aes(x = 20:119, xend = seed, y = seq(20, 29, length.out = 100), 
                   yend = seed + 5), colour = "#ff187d") +
    geom_segment(aes(x = -1:-100, xend = seed, y = seq(1, 10, length.out = 100), 
                     yend = seed + 5), colour = "#000000") +
    geom_curve(aes(x = -1:-100, xend = seed, y = seq(1, 10, length.out = 100), 
                   yend = seed + 5), colour = "#ffffff") +
    geom_curve(aes(x = -10:-109, xend = seed, y = seq(10, 19, length.out = 100), 
                   yend = seed + 5), colour = "#ffffff") +
    geom_curve(aes(x = -20:-119, xend = seed, y = seq(20, 29, length.out = 100), 
                   yend = seed + 5), colour = "#000000") +
    geom_segment(aes(x = 1:100, xend = -seed, y = seq(1, 10, length.out = 100), 
                     yend = -seed - 5), colour = "#000000") +
    geom_curve(aes(x = 1:100, xend = -seed, y = seq(1, 10, length.out = 100), 
                   yend = -seed - 5), colour = "#ffffff") +
    geom_curve(aes(x = 10:109, xend = -seed, y = seq(10, 19, length.out = 100), 
                   yend = -seed - 5), colour = "#ffffff") +
    geom_curve(aes(x = 20:119, xend = -seed, y = seq(20, 29, length.out = 100), 
                   yend = -seed - 5), colour = "#000000") +
    geom_segment(aes(x = -1:-100, xend = -seed, y = seq(1, 10, length.out = 100), 
                     yend = -seed - 5), colour = "#750052") +
    geom_curve(aes(x = -1:-100, xend = -seed, y = seq(1, 10, length.out = 100), 
                   yend = -seed - 5), colour = "#007680") +
    geom_curve(aes(x = -10:-109, xend = -seed, y = seq(10, 19, length.out = 100), 
                   yend = -seed - 5), colour = "#cfcf60") +
    geom_curve(aes(x = -20:-119, xend = -seed, y = seq(20, 29, length.out = 100), 
                   yend = -seed - 5), colour = "#ff187d") +
    theme_void()
  return(my_art)
}
