create_dataset <- function(outputDir = NULL) {

    ## example C++ code doesn't take a path
    ## so we'll just change the pwd for now
    if(!is.null(outputDir)) {
        pwd <- getwd()
        on.exit(setwd(pwd))

        setwd(outputDir)
    }

    res <- .C("create_dataset")

    message("Created: ", getwd(), .Platform$file.sep, "h5tutr_dset.h5")
}
