#' Convert Nanostring RCC Files to Matrix Form
#'
#' \code{convert_RCC_to_mat} converts the RCC files in a directory into a
#' matrix.
#' 
#' @param rcc.dir The path to the directory holding the RCC files
#' @return Matrix containing the raw nanostring count data of each RCC file
#' @author Stacy Hung
#' @export
convert_RCC_to_mat <- function(rcc.dir) {
  if (!requireNamespace("NanoStringNorm", quietly = TRUE)) {
    stop("NanoStringNorm needed for this function to work. Please install it.",
         call. = FALSE)
  }
  data.raw <- NanoStringNorm::read.markup.RCC(rcc.dir)
  data.norm <- NanoStringNorm::NanoStringNorm(data.raw, OtherNorm = "none");
  data.norm.mat <- data.norm$normalized.data

  # Remove Non-Expression Data Columns
  data.norm.mat.2 <- data.norm.mat[, 4:length(data.norm.mat)]
  data.norm.mat.2
}
