
#' Draw the boundaries of the infield and outfield areas
#'
#' The actual values for the coordinates of 1B, 2B, and 3B were eyeballed by
#' displaying the panel.grid and axis.text arguments as normal elements (they
#' are set to \code{element_blank()}) for the "real plots.
#'
#' @return
#' @export
#'
geom_ballfield <- function() {
    list(
    ggplot2::geom_curve(x = 34, xend = 220, y = -98, yend = -98, curvature = -0.65), # OF arc
    ggplot2::geom_segment(x = 128,  xend = 34, y = -208, yend = -98),  #LF line
    ggplot2::geom_segment(x = 128, xend = 220, y = -208, yend = -98),  # RF line
    ggplot2::geom_curve(x = 81, xend = 172, y = -154, yend = -154, curvature = -0.65), # inf arc
    ggplot2::geom_segment(x = 101,  xend = 127, y = -176, yend = -150),  #2b-3b line
    ggplot2::geom_segment(x = 155,  xend = 127, y = -176, yend = -150)  #1b-2b line
  )
}

