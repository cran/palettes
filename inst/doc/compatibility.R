## ----include = FALSE----------------------------------------------------------
# Preview vignette with: devtools::build_rmd("vignettes/compatibility.Rmd")
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(palettes)

## -----------------------------------------------------------------------------
colour_vector <- pal_colour(
  c("#a00e00", "#d04e00", "#f6c200", "#0086a8", "#132b69")
)
colour_vector

## -----------------------------------------------------------------------------
library(colorspace)

## -----------------------------------------------------------------------------
colour_matrix <- hex2RGB(colour_vector)
colour_matrix

## -----------------------------------------------------------------------------
as(colour_matrix, "HLS")

## -----------------------------------------------------------------------------
colour_strings <- hex(colour_matrix)
colour_strings

as_colour(colour_strings)

## -----------------------------------------------------------------------------
library(farver)

## -----------------------------------------------------------------------------
colour_matrix <- decode_colour(colour_vector)
colour_matrix

## -----------------------------------------------------------------------------
convert_colour(colour_matrix, "rgb", "lab")

## -----------------------------------------------------------------------------
colour_strings <- encode_colour(colour_matrix)
colour_strings

as_colour(colour_strings)

## -----------------------------------------------------------------------------
library(grDevices)

## -----------------------------------------------------------------------------
colour_matrix <- col2rgb(colour_vector)
colour_matrix

## -----------------------------------------------------------------------------
convertColor(t(colour_matrix), "sRGB", "Lab")

## -----------------------------------------------------------------------------
colour_strings <- rgb(
  r = colour_matrix[1, ], g = colour_matrix[2, ], b = colour_matrix[3, ],
  maxColorValue = 255
)
colour_strings

as_colour(colour_strings)

