moef.coef.df <- read.table("data-raw/model-coef.tsv")
devtools::use_data(moef.coef.df, overwrite = TRUE)
