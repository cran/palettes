% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.R
\name{plot.palettes_colour}
\alias{plot.palettes_colour}
\alias{plot.palettes_palette}
\title{Plot colour vectors and colour palettes}
\usage{
\method{plot}{palettes_colour}(
  x,
  n = NULL,
  direction = 1,
  space = "lab",
  interpolate = c("linear", "spline"),
  ...
)

\method{plot}{palettes_palette}(
  x,
  n = NULL,
  direction = 1,
  space = "lab",
  interpolate = c("linear", "spline"),
  ...
)
}
\arguments{
\item{x}{An object of class \code{\link[=pal_palette]{palettes_palette}} or
\code{\link[=pal_colour]{palettes_colour}}.}

\item{n}{An integer specifying the number of colours to return.}

\item{direction}{Sets the order of colours in the scale. If 1, the default,
colours are ordered from first to last. If -1, the order of colours is
reversed.}

\item{space}{The colour space to interpolate in. One of: \code{"cmy"}, \code{"hsl"},
\code{"hsb"}, \code{"hsv"}, \code{"lab"} (CIE L*ab), \code{"hunterlab"} (Hunter Lab),
\code{"oklab"}, \code{"lch"} (CIE Lch(ab) / polarLAB), \code{"luv"}, \code{"rgb"} (sRGB),
\code{"xyz"}, \code{"yxy"} (CIE xyY), \code{"hcl"} (CIE Lch(uv) / polarLuv), or \code{"oklch"}
(Polar form of oklab).}

\item{interpolate}{The interpolation method. Either "linear" (default) or
"spline".}

\item{...}{Not used.}
}
\value{
A \link[ggplot2:ggplot2-package]{ggplot2} object. The output has the following properties:
\itemize{
\item For objects of class \code{\link[=pal_colour]{palettes_colour}}: A plot of colour
swatches.
\item For objects of class \code{\link[=pal_palette]{palettes_palette}} with one palette:
A plot of colour swatches with the palette name spanned across the swatches.
\item For objects of class \code{\link[=pal_palette]{palettes_palette}} with more than one
palette: A faceted plot of colour swatches with palette names as facet
titles.
}
}
\description{
Plot colour vectors and colour palettes as swatches.
}
\examples{
# Objects of class `palettes_colour` are plotted as swatches.
x <- pal_colour(c("darkslateblue", "cornflowerblue", "slategray1"))
plot(x)

# Objects of class `palettes_palette` with one palette are plotted with
# the palette name spanned across the swatches.
y <- pal_palette(Egypt = c("#DD5129", "#0F7BA2", "#43B284", "#FAB255"))
plot(y)

# Objects of class `palettes_palette` with multiple palettes are faceted.
z <- pal_palette(
  Egypt = c("#DD5129", "#0F7BA2", "#43B284", "#FAB255"),
  Java  = c("#663171", "#CF3A36", "#EA7428", "#E2998A", "#0C7156")
)
plot(z)

# Colours can also be interpolated.
plot(x, n = 5)
plot(y, n = 5)
plot(z, n = 5)
}
\seealso{
\code{\link[=pal_colour]{pal_colour()}}, \code{\link[=pal_palette]{pal_palette()}}, \code{\link[=pal_ramp]{pal_ramp()}}
}
