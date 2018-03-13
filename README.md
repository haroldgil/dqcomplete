# dqcomplete

The goal of dqcomplete is to create interactive percent completeness heatmaps.

## Installation

You can install the development version of dqcomplete from [GitHub](https://GitHub.com) with:

``` r
devtools::install_github("haroldgil/dqcomplete")
```

Then load the package with:

``` r
library(dqcomplete)
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
dq_complete_plot(data = syn_miss_fields, by_var = "Source", title = "Percent Completeness of Fields by Source")

dq_complete_plot(data = syn_miss_source, by_var = "Source", title = "Percent Completeness of Fields by Source", miss = c(" ", "X", "blank", "sorry, not sorry"), margin = list(l=150, r=50, b=100, t=25, pad=4))
```

