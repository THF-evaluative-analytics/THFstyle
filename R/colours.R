
# Primary palette
THF_red <- '#dd0031'
THF_50pct_light_blue <- '#53a9cd'

# Secondary palette
THF_1_purple <- '#744284'
THF_2_yellow <- '#ffd412'
THF_3_teal <- '#2a7979'
THF_4_coral <- '#ee9b90'
THF_5_darkgreen <- '#0c402b'
THF_6_turquoise <- '#a6d7d3'
THF_7_blue <- '#005078'
THF_8_orange <- '#f39214'
THF_9_green <- '#2ca365'

# Tertiary palette
# to show changes of scale within data category
THF_75pct_rose <- '#ee7375'
THF_50pct_rose <- '#f2a0a2'

THF_75pct_light_blue <- '#7fbfda'

pal_THF_cont <- c(THF_red, THF_75pct_rose, THF_50pct_light_blue, THF_75pct_light_blue )
grDevices::palette(pal_THF_cont)
# Additional elements
THF_add_blue <- '#005078'
THF_75pct_blue <- '#3C7797'
THF_black <- '#000000'
THF_dark_grey <- '#524c48'
THF_50pct_dark_grey <- '#948E8E' # did this with a color picker
THF_light_grey <- '#e2dfd8'
THF_50pct_light_grey <- '#EEEDE8' # did this with a color picker
THF_75pct_grey_wash <- '#f6f5f3'

THF_colour_order <- c(THF_red,
                      THF_50pct_light_blue,
                      THF_1_purple,
                      THF_2_yellow,
                      THF_3_teal,
                      THF_4_coral,
                      THF_5_darkgreen,
                      THF_6_turquoise,
                      THF_7_blue,
                      THF_8_orange,
                      THF_9_green)
pal_THF <- c('#dd0031', '#53a9cd',  '#744284',  '#ffd412',   '#2a7979', '#ee9b90', '#0c402b', '#a6d7d3', '#005078', '#f39214', '#2ca365')
grDevices::palette(pal_THF)


#' THF default colours for fill option
#' Discrete colour scales THF for categorical variables
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(ToothGrowth, aes(x=factor(dose), y=len, fill=factor(dose))) +
#' geom_boxplot() + scale_fill_THF() + theme_THF()
#'
scale_fill_THF <- function(...){

  structure(list(
    scale_fill_manual(..., values=pal_THF)
  ))
}

#' THF default colours for colour option
#' Discrete colour scales THF for categorical variables
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(x=mpg, y=wt, colour=factor(cyl))) +
#' geom_point() +
#' scale_colour_THF() +
#' theme_THF()
#'
scale_colour_THF <- function(...){

  structure(list(
    scale_colour_manual(..., values=pal_THF)
  ))
}

#' THF default colours for colour option
#' Continuous colour scales THF for continuous variables
#'
#' @export
#'
#' @examples
#'
#' library(ggplot2)
#' ggplot(mtcars, aes(x=mpg, y=wt, colour=disp)) +
#' geom_point() +
#' scale_colour_continuous_THF() +
#' theme_THF()
scale_colour_continuous_THF <- function(...){

  structure(list(
    scale_colour_gradientn(..., colours = pal_THF_cont)
  ))
}


#' THF default colours for fill option
#' Continuous colour scales THF for continuous variables
#'
#' @export
#'
#' @examples
#'
#'library(ggplot2)
#'  ggplot(faithfuld, aes(waiting, eruptions)) + geom_raster(aes(fill = density)) +
#'  scale_fill_continuous_THF() + theme_THF()
scale_fill_continuous_THF <- function(...){

  structure(list(
    scale_fill_gradientn(..., colours = pal_THF_cont)
  ))
}

