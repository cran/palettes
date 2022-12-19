## ----eval = FALSE-------------------------------------------------------------
#  library(devtools)

## ----eval=FALSE---------------------------------------------------------------
#  create_package("~/path/to/sunsets")

## ----eval=FALSE---------------------------------------------------------------
#  use_description(
#    fields = list(
#      Title = "Sunset Colour Palettes",
#      `Authors@R` =
#        'person("First", "Last", , "first.last@example.com", c("aut", "cre"))',
#      Description = paste0(
#        "Colour palettes inspired by sunsets in the Canadian Prairies. ",
#        "Built using the 'palettes' package, which provides methods for ",
#        "printing, formatting, casting and coercion, extraction and updating ",
#        "of components, plotting, colour mixing arithmetic, and colour ",
#        "interpolation."
#      ),
#      URL = "https://github.com/user/repo",
#      BugReports = "https://github.com/user/repo/issues"
#    )
#  )

## ----eval=FALSE---------------------------------------------------------------
#  use_cc0_license()

## ----eval=FALSE---------------------------------------------------------------
#  use_data_raw(name = "sunset_palettes")

## ----eval=FALSE---------------------------------------------------------------
#  library(palettes)
#  
#  # Discrete palettes -----------------------------------------------------------
#  sunset_palettes_discrete <- pal_palette(
#    light = c("#dc8951", "#4E8AC9", "#F5D06D", "#69ca97", "#c978b5"),
#    dark = c("#EE6720", "#0792C9", "#E4B854", "#24B079", "#9A4F80")
#  )
#  
#  plot(sunset_palettes_discrete)
#  
#  usethis::use_data(sunset_palettes_discrete, overwrite = TRUE)
#  
#  # Sequential palettes ---------------------------------------------------------
#  sunset_palettes_sequential <- pal_palette(
#    orange = pal_brewer(pal_colour(c("#EE6720", "#FBE0D1")), n = 7),
#    blue   = pal_brewer(pal_colour(c("#0792C9", "#C1D1EB")), n = 7),
#    yellow = pal_brewer(pal_colour(c("#E4B854", "#FFECC8")), n = 7),
#    green  = pal_brewer(pal_colour(c("#24B079", "#C9EBD7")), n = 7),
#    purple = pal_brewer(pal_colour(c("#9A4F80", "#ECCCE2")), n = 7)
#  )
#  
#  plot(sunset_palettes_sequential)
#  
#  usethis::use_data(sunset_palettes_sequential, overwrite = TRUE)
#  
#  # All palettes ----------------------------------------------------------------
#  sunset_palettes <- c(
#    sunset_palettes_sequential,
#    sunset_palettes_discrete
#  )
#  
#  plot(sunset_palettes)
#  
#  usethis::use_data(sunset_palettes, overwrite = TRUE)

## ----eval=FALSE---------------------------------------------------------------
#  usethis::use_package("palettes", "Depends")

## ----eval=FALSE---------------------------------------------------------------
#  use_package_doc()

## ----eval=FALSE---------------------------------------------------------------
#  #' @keywords internal
#  "_PACKAGE"
#  
#  #' Internal palettes methods
#  #'
#  #' @import palettes
#  #' @keywords internal
#  #' @name sunsets-palettes
#  NULL

## ----eval=FALSE---------------------------------------------------------------
#  usethis::use_r("palettes")

## ----eval=FALSE---------------------------------------------------------------
#  #' Sunset palettes
#  #'
#  #' Palettes inspired by sunsets in the Canadian Prairies.
#  #'
#  #' @format ## `sunset_palettes`
#  #' An object of class `palettes_palette` with `r length(sunset_palettes)`
#  #' colour palettes. Use `names(sunset_palettes)` to return all palette names.
#  #' @source <https://github.com/mccarthy-m-g/sunsets>
#  #' @author [Michael McCarthy](https://github.com/mccarthy-m-g)
#  #' @seealso [pal_palette()], [pal_colour()]
#  #' @examples
#  #' # Get all palettes by name.
#  #' names(sunset_palettes)
#  #'
#  #' # Plot all palettes.
#  #' plot(sunset_palettes)
#  "sunset_palettes"
#  
#  #' @rdname sunset_palettes
#  #' @format ## `sunset_palettes_discrete`
#  #' An object of class `palettes_palette` with
#  #' `r length(sunset_palettes_discrete)` discrete colour palettes.
#  #'  Use `names(sunset_palettes_discrete)` to return all palette names.
#  "sunset_palettes_discrete"
#  
#  #' @rdname sunset_palettes
#  #' @format ## `sunset_palettes_sequential`
#  #' An object of class `palettes_palette` with
#  #' `r length(sunset_palettes_sequential)` sequential colour palettes.
#  #'  Use `names(sunset_palettes_sequential)` to return all palette names.
#  "sunset_palettes_sequential"

