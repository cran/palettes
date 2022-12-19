## ---- include = FALSE---------------------------------------------------------
# Preview vignette with: devtools::build_rmd("vignettes/biscale.Rmd")
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(palettes)
library(ggplot2)
library(patchwork)
library(biscale)

## -----------------------------------------------------------------------------
named_colour_vector <- pal_colour(c(
  "1-1" = "#d3d3d3", # low x, low y
  "2-1" = "#9e3547", # high x, low y
  "1-2" = "#4279b0", # low x, high y
  "2-2" = "#311e3b"  # high x, high y
))

named_colour_vector

names(named_colour_vector)

## -----------------------------------------------------------------------------
unnamed_colour_vector <- pal_colour(
  c("#d3d3d3", "#9e3547", "#4279b0", "#311e3b")
)

names(unnamed_colour_vector)

names(unnamed_colour_vector) <- c("1-1", "2-1", "1-2", "2-2")

names(unnamed_colour_vector)

## -----------------------------------------------------------------------------
bi_pal(named_colour_vector, dim = 2)

## -----------------------------------------------------------------------------
race_income <- bi_class(
  stl_race_income,
  x = pctWhite,
  y = medInc,
  dim = 3,
  style = "quantile",
  keep_factors = TRUE
)

## -----------------------------------------------------------------------------
named_colour_vector <- pal_colour(c(
  "1-1" = "#d3d3d3", # low x, low y
  "2-1" = "#ba8890",
  "3-1" = "#9e3547", # high x, low y
  "1-2" = "#8aa6c2",
  "2-2" = "#7a6b84", # medium x, medium y
  "3-2" = "#682a41",
  "1-3" = "#4279b0", # low x, high y
  "2-3" = "#3a4e78",
  "3-3" = "#311e3b" # high x, high y
))

## -----------------------------------------------------------------------------
# Draw map with a bivariate fill scale
race_income_plot <- ggplot(race_income, aes(fill = bi_class)) +
  geom_sf(color = "white", size = 0.1, show.legend = FALSE) +
  bi_scale_fill(pal = named_colour_vector, dim = 3) +
  labs(
    title = "Race and Income in St. Louis, MO",
    caption = "Breaks for percent white are 14.0% and 62.0% (range is 0-96.7%).
    Breaks for median income are $26,200 and $43,900
    (range is $10,500-$74,400)."
  ) +
  bi_theme()
  
# Draw the bivariate legend
bivariate_legend <- bi_legend(
  pal = named_colour_vector,
  dim = 3,
  xlab = "Higher % White ",
  ylab = "Higher Income ",
  size = 7
)

# Combine the map and bivariate legend
race_income_plot +
  inset_element(
    bivariate_legend,
    left = 0,
    bottom = 0.8,
    right = 0.5,
    top = 1,
    align_to = "plot"
  )

