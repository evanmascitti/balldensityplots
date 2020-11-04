#' Adjust theme elements of a a `ggspray_ecm` plot \strong{without} altering any font sizes (this will be left to \strong{cowplot})
#'
#' This theme removes undesired components and sets the parameters for the legend, # etc.
#'
#' @param base_size font size
#'
#' @return
#' @export
#'
theme_ballfield <- function(base_size = 12) {
require(extrafont)
  cowplot::theme_map() %+replace%
    ggplot2::theme(
      plot.title.position = "panel",
      legend.direction = 'vertical',
      legend.position = 'right',
      legend.title.align = 0.5,
      legend.text = element_blank(),
      plot.caption = element_text(hjust=0)
      )
}






legend.title.align = 0
