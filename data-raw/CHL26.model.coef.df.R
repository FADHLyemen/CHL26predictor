library("dplyr")

CHL26.model.coef.df <- read.table("data-raw/model-coef.tsv", header = TRUE,
                                  stringsAsFactor = FALSE)

hk.df <- data.frame(geneName = c("ACTB", "CLTC", "RPLP0"),
                    coef = NA,
                    feature = "housekeeper")

CHL26.model.coef.df <- CHL26.model.coef.df %>%
  mutate(feature = "predictor") %>%
  rbind(hk.df)

devtools::use_data(CHL26.model.coef.df, overwrite = TRUE)
