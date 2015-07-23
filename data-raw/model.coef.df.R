model.coef.df <- read.table("data-raw/model-coef.tsv", header = TRUE,
                            stringsAsFactor = FALSE)
devtools::use_data(model.coef.df, overwrite = TRUE)
