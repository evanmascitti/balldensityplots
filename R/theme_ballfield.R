#' Adjust theme elements of a a `ggspray_ecm` plot \strong{without} altering any font sizes (this will be left to \strong{cowplot})
#'
#' This theme removes undesired components and sets the parameters for the legend, # etc.
#'
#' @param base_size font size
#' @param base_family font family
#'
#' @return
#' @export
#'
theme_ballfield <- function(base_size = 12, base_family= "Arial Narrow") {
require(extrafont)
  cowplot::theme_map() %+replace%
    ggplot2::theme(
      plot.title.position = "panel",
      legend.direction = 'vertical',
      legend.position = 'right',
      legend.title.align = 0.5,
      legend.text = element_blank(),
      plot.caption = element_text(hjust=0)
      #plot.caption.position = "plot",
      #panel.background = ggplot2::element_blank(),
      #plot.margin = ggplot2::margin(t=10, l=20, r=20, b=10, unit = "mm"),
      #plot.background = ggplot2::element_blank(),
      #legend.box.margin = ggplot2::margin(t = 0, r = 0, b = 0, l = 0, unit = "in"),
      )
}






legend.title.align = 0
