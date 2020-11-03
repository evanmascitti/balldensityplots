#' Draw an empty spray chart on which to plot the ballfield boundaries
#'
#' A wrapper around ggspraychart_ecm that allows no data to be plotted, leaving the plot area
#' empty and able to accept a small dummy data set for adding a `geom_ballfield()`. Use to draw a
#' new plot with only one layer of `geom_ballfield()` instead of the hugs file that results from
#' using normal data sets.
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
#' @param frame used to generate animated ggplots
#'
#' @return
#' @export
#'
ggspraychart_ecm_skeleton <- function (data, x_value = "hc_x", y_value = "-hc_y",
                                        low_color= "#black", high_color= "white",
                                        fill_value = NULL, fill_palette = NULL, fill_legend_title = NULL,
                                        bin_size = 15, frame = NULL)
{
  plot <- ggplot2::ggplot(data = data, ggplot2::aes_string(x = x_value, y = y_value,
                                         frame = frame)) +
    ggplot2::stat_density2d(ggplot2::aes(fill = ..level..),
                   alpha= 0,
                   contour = TRUE, geom = "polygon",
                   bins = bin_size) +
    ggplot2::xlim(25, 228) +
    ggplot2::ylim(-220, -30)+
    ggplot2::coord_fixed()

  return(plot)
}
