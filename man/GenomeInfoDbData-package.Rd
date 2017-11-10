\name{GenomeInfoDb-package}

\alias{GenomeInfoDb-package}
\alias{specData}

\title{Species and taxonomy ID look up tables}

\description{
  This package contains one mapping object:
  \itemize{ 
    \item specData: A data frame with columns \sQuote{tax_id},
          \sQuote{genus}, and \sQuote{species}. Used to retrieve taxonomy
          ID by species and returns list of available species.
	  }
}

\details{
  Scripts to generate these files are in GenomeInfoDbData/inst/scripts. All
  originate from the taxdummp download at
  \url{ftp://ftp.ncbi.nih.gov/pub/taxonomy/taxdump.tar.gz}.
}

\usage{
data(specData)
}

\examples{
data(specData)
sapply(specData, class)   #      tax_id       genus     species
                          #   "integer"    "factor" "character" 
 
subset(specData, c(genus=="Homo" &  species=="sapiens"))$tax_id # [1] 9606
}

\keyword{datasets}
\author{Bioconductor Core Team}
