# THFstyle
Functions to make outputs look Health Foundation branded. We are starting with plots but will eventually add templates for Rmarkdown etc.

## Installing THFstyle

`THFstyle` is not on CRAN, so you will have to install it directly from Github using `devtools`. 

If you do not have the `devtools` package installed, you will have to run the first line in the code below as well. 


```
# install.packages('devtools')
devtools::install_github('THF-evaluative-analytics/THFstyle')
```
## Using the functions

`THF_theme()` has no arguments and is added to the `ggplot` statement similar to other `ggplot` functions. It will give your plots that Health Foundation look and feel but you might need to make some minor changes to be fully brand compliant. You can overwrite any of the `theme_THF` options using `theme()` as long as it comes after `theme_THF`.

By adding `scale_colour_THF`, `scale_colour_continuous_THF`, `scale_fill_THF` or `scale_colour_continuous_THF` to your `ggplot` statement and specifying the colour and/or fill option you plots will use the Health Foundations colours.  


## License
This project is licensed under the [MIT License](LICENSE.md).
