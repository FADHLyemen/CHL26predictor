#' Melts the Expression Matrix 
#'
#' Uses the reshape2::melt() function to melt the gene expression matrix
#' to return a sample-gene expression data.frame
#' 
#' @param in.mat Gene expression
#' @return data.frame of the melted gene expression matrix
#' @export
melt_mat <- function(in.mat) {
  message("Melt Gene Expression Matrix")
  in.df <- reshape2::melt(in.mat)
  in.df <- dplyr::rename_(in.df, 
                          .dots = setNames(c("Var1", "Var2"), 
                                           c("gene_name", "sample_id")))
  in.df
}
