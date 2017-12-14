\name{GenomeInfoDb-package}

\alias{GenomeInfoDb-package}
\alias{speciesMap}
\alias{validTaxIds}
\alias{specData}

\title{Species and taxonomy ID look up tables}

\description{
  This package contains three mapping objects:
  \itemize{ 
    \item speciesMap: A data frame with columns \sQuote{tax_id},
          \sQuote{genus}, and \sQuote{species}. Used to retrieve taxonomy
          ID by species and returns list of available species.
    \item validTaxIds: An integer vector of valid taxonomy IDs created from
          \code{speciesMap}. Used internally for quick taxonomy ID look ups.
    \item specData: A data frame with columns \sQuote{taxon} and
          \sQuote{species}. Used internally to retrieve species by taxonomy ID.
  }
}

\details{
  Scripts to generate these files are in GenomeInfoDbData/inst/scripts. All
  originate from the taxdummp download at
  \url{ftp://ftp.ncbi.nih.gov/pub/taxonomy/taxdump.tar.gz}.
}

\usage{
data(speciesMap)
data(validTaxIds)
data(specData)
}

\examples{
data(speciesMap)
sapply(speciesMap, class)   #       taxon     species 
                            #    "integer" "character" 
subset(speciesMap, species=="Homo sapiens")$taxon # [1] 9606
}

\keyword{datasets}
\author{Bioconductor Core Team}
