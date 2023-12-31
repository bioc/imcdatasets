#' List all available datasets
#'
#' Summary information for all available datasets in the \pkg{imcdatasets}
#' package.
#'
#' @details
#' Each dataset contains single-cell data, multichannel images and cell
#' segmentation masks.
#'
#' @return
#' A \linkS4class{DataFrame} where each row corresponds to a dataset, containing
#' the fields:
#' \itemize{
#'     \item \code{FunctionCall}, the R function call required to construct the
#'     dataset.
#'     \item \code{Species}, species of origin.
#'     \item \code{Tissue}, the tissue that was imaged.
#'     \item \code{NumberOfCells}, the total number of cells in the dataset.
#'     \item \code{NumberOfImages}, the total number of images in the dataset.
#'     \item \code{NumberOfChannels}, the number of channels per image.
#'     \item \code{Reference}, a Markdown-formatted citation to
#'     \code{scripts/ref.bib} in the \pkg{imcdatasets} installation directory.
#' }
#'
#' @examples
#' listDatasets()
#'
#' @export
#' @importFrom S4Vectors DataFrame
#' @importFrom utils read.csv
listDatasets <- function() {
    path <- system.file("extdata", "alldatasets.csv", package = "imcdatasets")
    DataFrame(read.csv(path, stringsAsFactors=FALSE))
}
