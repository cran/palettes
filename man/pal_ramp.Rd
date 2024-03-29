% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pal_ramp.R
\name{pal_ramp}
\alias{pal_ramp}
\alias{pal_ramp.palettes_colour}
\alias{pal_ramp.palettes_palette}
\title{Colour vector and colour palette interpolation}
\usage{
pal_ramp(
  palette,
  n = NULL,
  direction = 1,
  space = "lab",
  interpolate = c("linear", "spline")
)

\method{pal_ramp}{palettes_colour}(
  palette,
  n = NULL,
  direction = 1,
  space = "lab",
  interpolate = c("linear", "spline")
)

\method{pal_ramp}{palettes_palette}(
  palette,
  n = NULL,
  direction = 1,
  space = "lab",
  interpolate = c("linear", "spline")
)
}
\arguments{
\item{palette}{An object of class \code{\link[=pal_palette]{palettes_palette}} or
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
}
\value{
An object of the same type as \code{palette}. The output has the following properties:
\itemize{
\item For objects of class \code{\link[=pal_colour]{palettes_colour}}: A colour vector
with \code{n} colours.
\item For objects of class \code{\link[=pal_palette]{palettes_palette}}: Colour palettes
with \code{n} colours in each palette.
}
}
\description{
Interpolate the set of colours in \code{\link[=pal_palette]{palettes_palette}} or
\code{\link[=pal_colour]{palettes_colour}} objects to create new colour palettes.
}
\examples{
# The class returned after interpolation matches the input class.
x <- pal_colour(c("darkslateblue", "cornflowerblue", "slategray1"))
y <- pal_palette(blues = x)
class(pal_ramp(x))
class(pal_ramp(y))

# Choose between linear and spline interpolation.
pal_ramp(x, n = 7, interpolate = "linear")
pal_ramp(x, n = 7, interpolate = "spline")

# Palettes will have the same length after interpolation, regardless of the
# number of colours in the original palette.
z <- pal_palette(
  Egypt = c("#DD5129", "#0F7BA2", "#43B284", "#FAB255"),
  Java  = c("#663171", "#CF3A36", "#EA7428", "#E2998A", "#0C7156")
)
pal_ramp(z, n = 5)
}
\seealso{
\code{\link[=pal_colour]{pal_colour()}}, \code{\link[=pal_palette]{pal_palette()}}
}
