% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/specific-themes.R
\name{geom_density_RR}
\alias{geom_density_RR}
\title{Custom wrapper for geom_density}
\usage{
geom_density_RR(..., alpha = 0.5)
}
\arguments{
\item{...}{Other arguments passed on to \code{\link[ggplot2:layer]{layer()}}. These are
often aesthetics, used to set an aesthetic to a fixed value, like
\code{colour = "red"} or \code{size = 3}. They may also be parameters
to the paired geom/stat.}

\item{alpha}{Degree of transparency in the density plots.}
}
\description{
Custom wrapper for geom_density
}
\examples{
library(ggplot2)
# Generate example data
set.seed(123)
data <- data.frame(
  Group = rep(c("Group1", "Group2"), each = 200),
  Value = c(rnorm(200, mean = 0, sd = 1), rnorm(200, mean = 2, sd = 1)))

# Create density plot
data |>
  ggplot(aes(x = Value, fill = Group)) +
  theme_RR() +
  geom_density_RR(alpha = 0.5) +
  labs(x = "Value", y = "Density",
       fill = "Group") +
  scale_fill_RR()
}
