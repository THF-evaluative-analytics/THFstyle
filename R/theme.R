
#' Title
#'
#' @param base_size
#' @param base_family
#'
#' @return
#' @export
#'
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(mtcars, aes(x = mpg)) + geom_dotplot() + THF_styles()
theme_THF <- function (base_size = 11,
                       base_family = "LTUnivers")
{
  half_line <- base_size / 2

  ggthemes::theme_foundation(base_size = base_size, base_family = base_family) %+replace%
    theme(
      line = element_line(
        colour = 'black',
        size = 0.5,
        linetype = 1,
        lineend = 'butt'
      ),
      rect = element_rect(
        fill = 'white',
        colour = 'white',
        size = 0.5,
        linetype = 0
      ),
      text = element_text(
        family = base_family,
        face = 'bold',
        colour = 'black',
        size = base_size,
        lineheight = 0.9,
        hjust = 0.5,
        vjust = 0.5,
        angle = 0,
        margin = margin(),
        debug = FALSE
      ),
      axis.line = element_line(colour = 'grey90'),
      axis.line.x =  element_line(colour = 'grey90'),
      axis.line.y =  element_blank(),
      axis.text = element_text(size = 2 * ggplot2:::.pt, colour = THF_dark_grey),
      axis.text.x = element_text(angle = -45, hjust = -0.08),
      axis.text.y = element_text(
        size = 2 * ggplot2:::.pt,
        margin = margin(r = 5, unit = 'mm')
      ),
      axis.ticks = element_line(colour = THF_light_grey, size = 0.5 * ggplot2:::.pt),
      axis.ticks.length = unit(1, 'mm'),
      axis.title.x = element_text(margin = margin(
        t = 0.8 * half_line,
        b = 0.8 * half_line / 2
      )),
      axis.title.y = element_text(
        angle = 90,
        margin = margin(r = 0.8 * half_line,
                        l = 0.8 * half_line / 2)
      ),
      legend.spacing = unit(0.2, 'cm'),
      legend.key = element_rect(fill = 'white', colour = 'white'),
      legend.key.size = unit(1.2, 'lines'),
      legend.key.height = NULL,
      legend.key.width = NULL,
      legend.text = element_text(size = rel(0.8), face = 'plain', colour = THF_dark_grey),
      legend.text.align = NULL,
      legend.title = element_blank(),
      legend.title.align = NULL,
      legend.position = 'top',
      legend.direction = NULL,
      legend.box = NULL,
      plot.margin = margin(3, 3, 3, 2, 'mm'),
      legend.background = element_rect(fill = NA),
      legend.justification = c(1, 0),
      legend.margin = margin(b = 10, l = 20, unit = 'mm'),
      panel.background = element_blank(),
      panel.border = element_blank(),
      panel.grid.major.y = element_line(colour = 'grey', size = 0.25),
      panel.grid.major.x = element_blank(),
      panel.grid.minor.y = element_blank(),
      panel.grid.minor.x = element_blank(),
      panel.spacing =  unit(half_line, 'pt'),
      panel.margin.x = NULL,
      panel.spacing.y = NULL,
      panel.ontop = FALSE,
      strip.background = element_rect(fill = 'grey85', colour = NA),
      strip.text = element_text(colour = 'grey10', size = rel(0.8)),
      strip.text.x = element_text(margin = margin(t = half_line,
                                                  b = half_line)),
      strip.text.y = element_text(
        angle = -90,
        margin = margin(l = half_line,
                        r = half_line)
      ),
      strip.switch.pad.grid = unit(0.1, 'cm'),
      strip.switch.pad.wrap = unit(0.1, 'cm'),

      plot.background = element_rect(colour = 'white'),
      plot.title = element_text(size = rel(0.8),
                                margin = margin(b = half_line * 1.2)),
      complete = TRUE
    )
}
