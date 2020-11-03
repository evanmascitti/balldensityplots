#' Adjust theme elements of a a `ggspray_ecm` plot
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

  ggplot2::theme_minimal(base_size = base_size) %+replace%
    ggplot2::theme(
      axis.text = ggplot2::element_blank(),
      panel.grid = ggplot2::element_blank(),
      strip.text.x = ggplot2::element_text(face = "bold", size = 20),
      axis.title = ggplot2::element_blank(),
      plot.background = ggplot2::element_rect(fill="transparent", color= "transparent"),
      panel.background = ggplot2::element_rect(fill="transparent", color= "transparent"),
      legend.position = c("bottom"),
      legend.title = ggplot2::element_text(vjust = 0.5),
      legend.title.align = 0.5,
      legend.direction = 'horizontal',
      legend.box.margin = ggplot2::margin(t = 0, r = 0, b = 0, l = 0, unit = "in"),
      legend.text = ggplot2::element_blank()
      )
}

