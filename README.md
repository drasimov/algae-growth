# Algae Growth Quantification in the Home Lab

See the [iGEM Project](https://2023.igem.wiki/basis-china/model) this is a part of.

A set of tools for image analysis - estimating OD values from a set of images through RGB analysis and generating plots to display the data. This repository contains two tools:
1. Batch RGB color extractor (JS): takes in a set of images of algae growth (continuous green shade) and returns a .csv with the RGB values for each image
2. Data analyzer and visualizer (R): processes the RGB values, approximating an OD value and generating plots

### Citations
R and R packages:
- R Core Team (2023). _R: A Language and Environment for Statistical Computing_. R Foundation for Statistical Computing, Vienna, Austria. <https://www.R-project.org/>.
- H. Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag New York, 2016.
- Kassambara A (2023). _ggpubr: 'ggplot2' Based Publication Ready Plots_. R package version 0.6.0, <https://CRAN.R-project.org/package=ggpubr>.
- Arnold J (2021). _ggthemes: Extra Themes, Scales and Geoms for 'ggplot2'_. R package version 4.2.4, <https://CRAN.R-project.org/package=ggthemes>.
- H. Wickham. Reshaping data with the reshape package. Journal of Statistical Software, 21(12), 2007.

Library used in image analysis
- color-thief Github repository linked here: https://github.com/lokesh/color-thief/releases/tag/v2.4.0
