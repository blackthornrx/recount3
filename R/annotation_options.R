#' List available annotation options for a given organism
#'
#' This function will return the available annotation options for a given
#' `organism`.
#'
#' @inheritParams locate_url
#'
#' @return A `character()` vector with the supported annotation options for the
#' given `organism`.
#' @export
#'
#' @examples
#'
#' annotation_options("human")
#' annotation_options("mouse")
#' annotation_options("rat")
annotation_options <- function(organism = c("human", "mouse", "rat", "pig", "rabbit")) {
    organism <- match.arg(organism)
    if (organism == "human") {
        options <- c(
            "gencode_v26",
            "gencode_v29",
            "fantom6_cat",
            "refseq",
            "ercc",
            "sirv",
            "l1000"
        )
    } else if (organism == "mouse") {
        options <- c(
            "gencode_v23",
            "ercc",
            "sirv"
        )
    } else if (organism == "rat") {
        options <- c(
            "rbn72",
            "ercc",
            "sirv"
        )
    } else if (organism == "pig") {
        options <- c(
            "p111",
            "ercc",
            "sirv"
        )
    } else if (organism == "rabbit") {
        options <- c(
            "mr20",
            "ercc",
            "sirv"
        )
    }
    return(options)
}
