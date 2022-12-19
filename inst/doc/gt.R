## ---- include = FALSE---------------------------------------------------------
# Preview vignette with: devtools::build_rmd("vignettes/gt.Rmd")
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, message = FALSE, warning = FALSE----------------------------------
library(palettes)
library(gt)
library(scales)
library(dplyr)

## -----------------------------------------------------------------------------
# Modify the `airquality` dataset by adding the year
# of the measurements (1973) and limiting to 10 rows
airquality_m <- 
  airquality %>%
  mutate(Year = 1973L) %>%
  slice(1:10) %>% 
  select(Year, Month, Day, Temp)
  
# Create a display table using the `airquality`
# dataset; arrange columns into groups
gt_tbl <- 
  gt(airquality_m) %>%
  tab_header(
    title = "New York Temperature Measurements",
    subtitle = "Daily measurements in New York City (May 1-10, 1973)"
  ) %>%
  tab_spanner(
    label = "Time",
    columns = c(Year, Month, Day)
  ) %>%
  tab_spanner(
    label = "Measurement",
    columns = c(Temp)
  ) %>%
  cols_label(
    Temp = html("Temp,<br>&deg;F")
  )

# Show the gt table
gt_tbl

## -----------------------------------------------------------------------------
colour_vector <- rev(met_palettes$Hiroshige)
colour_vector

## -----------------------------------------------------------------------------
character_vector <- as.character(colour_vector)
character_vector

## -----------------------------------------------------------------------------
gt_tbl %>% 
  data_color(
    columns = Temp,
    colors  = character_vector
  )

## -----------------------------------------------------------------------------
gt_tbl %>% 
  data_color(
    columns = Temp,
    colors  = pal_numeric(colour_vector, domain = NULL)
  )

