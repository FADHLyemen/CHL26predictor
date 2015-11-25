# CHL26predictor
An R Package for the Classical Hodgkin Lymphoma (CHL) 26 Gene Overall Survival Predictor. This is the companion R package for the predictor that has been published.

* [Scott, D. W., Chan, F. C., Hong, F., Rogic, S., Tan, K. L., Meissner, B., et al. (2013). Gene expression-based model using formalin-fixed paraffin-embedded biopsies predicts overall survival in advanced-stage classical Hodgkin lymphoma. J Clin Oncol, 31(6), 692–700. doi:10.1200/JCO.2012.43.4589](http://www.ncbi.nlm.nih.gov/pubmed/23182984)

# Installation

To install this package, use [devtools](https://cran.r-project.org/web/packages/devtools/index.html):

```{r}
devtools::install_github("tinyheero/CHL26predictor")
```

## Suggested Dependencies 

This package suggests the installation of the [NanoStringNorm R package](https://cran.r-project.org/web/packages/NanoStringNorm/index.html) for access to some additional (but non-essential) functions (e.g. `convert_RCC_to_mat`). You can install NanoStringNorm from CRAN using:

```{r}
install.packages("NanoStringNorm")
```

Newer versions of NanoStringNorm (at least from v1.1.21 onwards), depend on the `vsn` Bioconductor R package. As NanoStringNorm is not part of Bioconductor, you will need to install this dependency yourself:

```{r}
## try http:// if https:// URLs are not supported
source("https://bioconductor.org/biocLite.R")
biocLite("vsn")
```

# Overview

To see the full list of exported functions:

```{r}
library("CHL26predictor")
ls("package:CHL26predictor")
```

A quick overview of some of the key functions:

* `convert_RCC_to_mat`: Converts the RCC files in a directory into a matrix. 
* `get_normalizer`: Returns the normalizer values for each sample.

An [introduction vignette](http://htmlpreview.github.io/?https://github.com/tinyheero/CHL26predictor/blob/master/vignettes/introduction.html) has been written to describe how to use the R package.
