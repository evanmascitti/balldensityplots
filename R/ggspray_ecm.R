#' Plot the density of batted ball coordinates
#'
#' This is an adaptation of `ggspraychart` from the excellent \strong{baseballr}
#' package. The main difference is the visual thickness of the contour lines and
#' the color palette. Points are not used for this plot, which substantially
#' reduces the computational requirements for large datasets.
#'
#' @param data A data frame containing "hc_x" and "hc_y" from StatCast database
#' @param x_value Coordinates of the ball impact or fielding location
#' @param y_value Coordinates of the ball impact or fielding location
#' @param low_color Hex code for the color representing lowest density
#' @param high_color Hex code for the color representing highest density
#' @param fill_value see `ggspraychart()` in \strong{baseballr}
#' @param fill_palette A means to adjust the fill palette
#' @param fill_legend_title A custom legend title
#' @param bin_size Number of bins for computing density contours, defaults to 15
#' @param alpha The opacity of the filled polygons
#' @param frame used to generate animated ggplots
#'
#' @return a ggplot object
#' @export
#'
ggspraychart_ecm <- function (data, x_value = "hc_x", y_value = "-hc_y",
                              low_color= "#b1d3e6", high_color= "#8b0000",
                              fill_value = NULL, fill_palette = NULL, fill_legend_title = NULL,
                              bin_size = 15, alpha =0.6, frame = NULL)
{
  plot <- ggplot(data = data, aes_string(x = x_value, y = y_value,
                                         frame = frame)) +
    ggplot2::stat_density2d(ggplot2::aes(fill = ..level..),
                   contour = TRUE, geom = "polygon", alpha = 0.3,
                   bins = bin_size) +
    ggplot2::stat_density2d(color = "grey20",
                   alpha = alpha,
                   bins = bin_size,
                   size= 0.05)+
    ggplot2::scale_fill_gradient(low = low_color, high = high_color,
                        guide = "colourbar", labels= scales::label_comma())+
    ggplot2::xlim(25, 228) +
    ggplot2::ylim(-210, -80) +
    ggplot2::coord_fixed() +
    ggplot2::labs(fill= 'Fielded ball density')

  return(plot)
}
