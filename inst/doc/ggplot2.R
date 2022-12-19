## ---- include = FALSE---------------------------------------------------------
# Preview vignette with: devtools::build_rmd("vignettes/ggplot2.Rmd")
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(palettes)
library(ggplot2)
library(scales)

## -----------------------------------------------------------------------------
ggplot(diamonds[sample(nrow(diamonds), 1000), ], aes(carat, price)) +
  geom_point(aes(colour = clarity)) +
  scale_colour_palette_d(met_palettes$VanGogh3)

## ---- out.width = "45%", fig.show = "hold"------------------------------------
hwy_mpg <- ggplot(mpg, aes(displ, hwy, colour = hwy)) +
  geom_point()

hwy_mpg + scale_colour_palette_c(met_palettes$Greek)

hwy_mpg + scale_colour_palette_b(met_palettes$Greek)

## -----------------------------------------------------------------------------
ggplot(diamonds, aes(x = price, fill = cut)) +
  geom_histogram(position = "dodge", binwidth = 1000) +
  scale_fill_palette_d(pnw_palettes$Sunset)

## ---- out.width = "45%", fig.show = "hold"------------------------------------
eruptions <- ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
  geom_tile()

eruptions + scale_fill_palette_c(viridis_palettes$mako)

eruptions + scale_fill_palette_b(viridis_palettes$mako)

## -----------------------------------------------------------------------------
treatment_results <- data.frame(
  group   = LETTERS[1:4],
  outcome = c(-0.5, -1.1, 1.9, 2.3)
)

## -----------------------------------------------------------------------------
ggplot(treatment_results, aes(x = group, y = outcome, fill = outcome)) +
  geom_col() +
  scale_fill_palette_c(met_palettes$Benedictus)

## -----------------------------------------------------------------------------
ggplot(treatment_results, aes(x = group, y = outcome, fill = outcome)) +
  geom_col() +
  scale_fill_palette_c(
    met_palettes$Benedictus,
    rescaler = ~ rescale_mid(.x, mid = 0)
  )

