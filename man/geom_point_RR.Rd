% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/specific-themes.R
\name{geom_point_RR}
\alias{geom_point_RR}
\title{Custom wrapper for geom_point}
\usage{
geom_point_RR(..., size = 2.5)
}
\arguments{
\item{...}{Other arguments passed on to \code{\link[ggplot2:layer]{layer()}}. These are
often aesthetics, used to set an aesthetic to a fixed value, like
\code{colour = "red"} or \code{size = 3}. They may also be parameters
to the paired geom/stat.}

\item{size}{Size of the dots.}
}
\description{
Custom wrapper for geom_point
}
\examples{
library(ggplot2)
iris |>
ggplot(aes(x = Sepal.Length,
y = Sepal.Width,
color = Species)) +
theme_RR() +
geom_point_RR() +
labs(title = "Scatterplot of Sepal Dimensions",
x = "Sepal Length",
y = "Sepal Width") +
scale_color_RR()

}
