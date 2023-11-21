#### SETUP ####
# Libraries
library(tidyverse)
library(ggplot2)
library(conflicted)
library(reshape2)
library(viridis)


volc <- melt(volcano)
names(volc) <- c("x", "y", "z")

volc$x <- as.numeric(volc$x)
volc$y <- as.numeric(volc$y)
volc$z <- as.numeric(volc$z)

ggplot(volcano_long, aes(x = x, y = y, z = z)) +
  geom_contour_filled(discrete = TRUE, aes(fill = after_stat(level))) +
  scale_color_viridis(option = "magma", option = "magma") +
  labs(title = "Volcano Topography", fill = "Elevation") +
  theme_void()

