#' import ggplot2
#' import scales
#' import ggthemes
#' import grid
#' @name imports
NULL

#' Basic theme function to implement the official graph style of the Norwegian Office of the Auditor General.
#'
#' @inheritParams ggplot2::theme_grey
#'
#' @export
#' @examples
#' library(ggplot2)
#' p <- ggplot(mtcars) + geom_point(aes(x = wt, y = mpg,
#' colour = factor(gear)))
#'
#' p + theme_RR()

theme_RR <- function(base_size = 12, base_family = "sans") {

  ret <-
    ggthemes::theme_foundation(base_size = base_size, base_family = base_family) +
    ggplot2::theme(line = ggplot2::element_line(color = "#183271"),
                   rect = ggplot2::element_rect(fill = main_colors, color = NA,
                                       linetype = 1),
                   text = ggplot2::element_text(color = "#183271"),

                   # Axis lines
                   axis.line = ggplot2::element_line(RR_dark_blue,
                                            linewidth = ggplot2::rel(0.8)),

                   # Axis titles
                   axis.title.y = ggplot2::element_text(margin = ggplot2::margin(r = base_size+8,
                                                               l = base_size),
                                               angle = 90,
                                               size = ggplot2::rel(1.15)),
                   axis.title.x = ggplot2::element_text(margin = ggplot2::margin(t = base_size+8,
                                                               b = base_size),
                                               size = ggplot2::rel(1.15)),

                   # Axis text
                   axis.text = ggplot2::element_text(size = ggplot2::rel(1)),
                   axis.text.x = ggplot2::element_text(vjust = 0,
                                              margin = ggplot2::margin(t = base_size-5,
                                                              unit = "pt"),
                                              size = ggplot2::rel(1)),
                   axis.text.y = ggplot2::element_text(hjust = 0,
                                              margin = ggplot2::margin(r = base_size-5,
                                                              unit = "pt"),
                                              size = ggplot2::rel(1)),

                   # Axis ticks
                   axis.ticks = ggplot2::element_blank(),
                   axis.ticks.length = grid::unit(-0.25, "cm"),

                   # Legend
                   legend.background = ggplot2::element_rect(fill = RR_light_blue,
                                                    color = RR_light_blue,
                                                    linetype = 0),
                   legend.box.background = ggplot2::element_rect(fill = RR_light_blue,
                                                        color = RR_light_blue,
                                                        linetype = 0),
                   #legend.spacing = ggplot2::margin(c(0,0,0,0), "points"),
                   legend.key = ggplot2::element_rect(fill = RR_light_blue,
                                             color = RR_light_blue,
                                             linetype = 0),
                   legend.key.size = grid::unit(1.2, "lines"),
                   legend.key.height = NULL,
                   legend.key.width = NULL,
                   legend.text = ggplot2::element_text(size = ggplot2::rel(1.1)),
                   legend.text.align = NULL,
                   legend.title = ggplot2::element_text(size = ggplot2::rel(1.2),  hjust = 0,
                                               margin = ggplot2::margin(t = 12,
                                                                        r = 0,
                                                                        b = 0,
                                                                        l = 0,
                                                               unit = "pt")),
                   legend.title.align = NULL,
                   legend.position = "right",
                   legend.direction = NULL,
                   legend.justification = "center",

                   # Panel and plot backgrounds
                   panel.background = ggplot2::element_rect(fill = "white", linetype = 0),
                   panel.border = ggplot2::element_blank(),
                   panel.grid.major = ggplot2::element_line(color = scales::alpha(RR_dark_blue, 0.5),
                                                   linewidth = ggplot2::rel(1.75),
                                                   linetype = "dotted", size = 0.6),
                   panel.grid.minor = ggplot2::element_blank(),
                   panel.spacing = grid::unit(0.25, "lines"),
                   plot.background = ggplot2::element_rect(fill = RR_light_blue,
                                                  color = RR_light_blue),

                   # Facet wrap aesthetics
                   strip.background.x = ggplot2::element_rect(color = "transparent",
                                                     fill = "transparent"),
                   strip.background.y = ggplot2::element_rect(color = "transparent",
                                                     fill = "transparent"),
                   strip.text = ggplot2::element_text(color = RR_dark_blue,
                                             family = base_family,
                                             face = "bold",
                                             size = ggplot2::rel(1),
                                             margin = grid::unit(c(0.5,0,0.35,0), "lines")),

                   # Plot title
                   plot.title = ggplot2::element_text(size = ggplot2::rel(1.5),
                                             hjust = 0, face = "bold",
                                             margin = ggplot2::margin(t = 0,
                                                                        r = 0,
                                                                        b = 12,
                                                                        l = 0,
                                                                      unit = "points")),

                   # Spacing
                   plot.margin = grid::unit(c(1, 0.6, 0.4, 0.4), "cm"),
                   complete = TRUE)
  ret
}
