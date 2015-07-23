model.coef.df <- read.table("data-raw/model-coef.tsv", header = TRUE)
devtools::use_data(model.coef.df, overwrite = TRUE)
