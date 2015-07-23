CHL26.model.coef.df <- read.table("data-raw/model-coef.tsv", header = TRUE,
                                  stringsAsFactor = FALSE)
devtools::use_data(CHL26.model.coef.df, overwrite = TRUE)
