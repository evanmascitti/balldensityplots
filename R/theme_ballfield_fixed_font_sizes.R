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
theme_ballfield_fixed_font_sizes <- function(base_size = 12, base_family= "Arial Narrow") {

  ggplot2::theme_minimal(base_size = base_size) %+replace%
    ggplot2::theme(
      plot.title.position = "panel",
      plot.title = ggplot2::element_text(size=14, face = 'bold', hjust = 0),
      plot.subtitle = ggplot2::element_text(size = 8, hjust = 0, margin = ggplot2::margin(t=0, unit = "mm")),
      plot.caption = ggplot2::element_text(size=8, hjust = 0),
      plot.caption.position = "plot",
      panel.background = ggplot2::element_blank(),
      plot.margin = ggplot2::margin(t=10, l=20, r=20, b=10, unit = "mm"),
      plot.background = ggplot2::element_blank(),
      axis.text = ggplot2::element_blank(),
      panel.grid = ggplot2::element_blank(),
      strip.text.x = ggplot2::element_text(face = "bold", size = 20),
      axis.title = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_line(color ="transparent"),
      legend.direction = 'vertical',
      legend.position = 'right',
      legend.title = ggplot2::element_text(size=10, vjust=0.5, hjust=0.5),
      legend.title.align = 0.5,
      legend.box.margin = ggplot2::margin(t = 0, r = 0, b = 0, l = 0, unit = "in"),
      legend.text = ggplot2::element_blank()
      )
}






legend.title.align = 0
