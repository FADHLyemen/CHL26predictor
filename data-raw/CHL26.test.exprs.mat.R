num.samples <- 10

exprs.list <- list()
exprs.list[["ACTB"]] <- rpois(num.samples, sample(seq(9000, 50000, 1)))
exprs.list[["ALDH1A1"]] <- rpois(num.samples, sample(seq(30, 1500, 1)))
exprs.list[["APOL6"]] <- rpois(num.samples, sample(seq(90, 650)))
exprs.list[["B2M"]] <- rpois(num.samples, sample(seq(30000, 200000)))
exprs.list[["CCL17"]] <- rpois(num.samples, sample(seq(2500, 65000)))
exprs.list[["CD300A"]] <- rpois(num.samples, sample(seq(20, 200)))
exprs.list[["CD68"]] <- rpois(num.samples, sample(seq(1000, 10000)))
exprs.list[["CLTC"]] <- rpois(num.samples, sample(seq(150, 1500)))
exprs.list[["COL6A1"]] <- rpois(num.samples, sample(seq(200, 10000)))
exprs.list[["CXCL11"]] <- rpois(num.samples, sample(seq(30, 2000)))
exprs.list[["GLUL"]] <- rpois(num.samples, sample(seq(1500, 25000)))
exprs.list[["HLA_A"]] <- rpois(num.samples, sample(seq(5000, 30000)))
exprs.list[["HLA_C"]] <- rpois(num.samples, sample(seq(4000, 20000)))
exprs.list[["IFNG"]] <- rpois(num.samples, sample(seq(30, 550)))
exprs.list[["IL15RA"]] <- rpois(num.samples, sample(seq(150, 1500)))
exprs.list[["IRF1"]] <- rpois(num.samples, sample(seq(600, 4000)))
exprs.list[["LMO2"]] <- rpois(num.samples, sample(seq(50, 500)))
exprs.list[["LYZ"]] <- rpois(num.samples, sample(seq(3000, 55000)))
exprs.list[["PDGFRA"]] <- rpois(num.samples, sample(seq(150, 2000)))
exprs.list[["PRF1"]] <- rpois(num.samples, sample(seq(300, 2000)))
exprs.list[["RAPGEF2"]] <- rpois(num.samples, sample(seq(5, 300)))
exprs.list[["RNF144B"]] <- rpois(num.samples, sample(seq(100, 1200)))
exprs.list[["RPLP0"]] <- rpois(num.samples, sample(seq(6000, 150000)))
exprs.list[["STAT1"]] <- rpois(num.samples, sample(seq(1000, 10000)))
exprs.list[["TNFSF10"]] <- rpois(num.samples, sample(seq(450, 5000)))
exprs.list[["WDR83"]] <- rpois(num.samples, sample(seq(30, 150)))

CHL26.test.exprs.mat <- 
  matrix(unlist(exprs.list), length(exprs.list), num.samples, byrow = TRUE,
         dimnames = list(names(exprs.list), 
                         paste("sample", LETTERS[1:num.samples], sep = "")))

devtools::use_data(CHL26.test.exprs.mat, overwrite = TRUE)
