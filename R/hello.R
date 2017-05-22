create_dataset <- function(outputDir = NULL, lang = "C") {

    ## example C++ code doesn't take a path
    ## so we'll just change the pwd for now
    if(!is.null(outputDir)) {
        pwd <- getwd()
        on.exit(setwd(pwd))

        setwd(outputDir)
    }
  
    if(lang == "C") {
      
      res <- .C("create_dataset_c")
      message("Created: ", getwd(), .Platform$file.sep, "dset.h5")
      
    } else if(lang == ("C++")) {
      
      res <- .C("create_dataset_cxx")
      message("Created: ", getwd(), .Platform$file.sep, "h5tutr_dset.h5")
      
    }
    else {
      stop("lang should be one of 'C' or 'C++'")
    }
}
