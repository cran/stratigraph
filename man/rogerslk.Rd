\name{rogerslk}
\alias{rogerslk}
\docType{data}
\title{Rogers Lake}
\description{
  A pollen core from Rogers Lake, Connecticut in the data structure produced by \code{\link{readGPDascii}}
}
\usage{data(rogerslk)}
\format{
  The output format is a data frame with columns:

\tabular{ll}{ 
  $counts \tab count matrix with species in columns, depths in rows \cr
\tab num [1:91, 1:78] 0 0 0 0 0 0 0 0 0 0 ...\cr
\tab  ..- attr(*, "dimnames")=List of 2\cr
\tab  .. ..$ : chr [1:91] "7.5" "17.5" "22.5" "32" ...\cr
\tab  .. ..$ : chr [1:78] "Abi     " "Ace.ru  " "Ace.sa-t" "Ace.ud  " ...\cr
  $depths \tab num [1:91] 7.5 17.5 22.5 32 37.5 47.4 58 68.5 79 94.6 ...\cr
  $sample.names \tab chr [1:91] " " " " " " " " ...\cr
  $absolute.ages \tab num [1:91]   0  79 119 200 293 ...\cr
  $taxa \tab chr [1:78] "Abies" "Acer rubrum" "Acer saccharum-type" "Acer undiff." ...\cr
  $short.names \tab chr [1:78] "Abi     " "Ace.ru  " "Ace.sa-t" "Ace.ud  " ...\cr
  $tax.cat \tab Factor w/ 7 levels "A","B","F","M",..: 1 1 1 1 1 1 1 1 1 1 ...\cr
  $metadata \tab chr [1:138] " GPD ASCII Format" " 24 Apr 00" " Raw Counts - All Pollen Types" "" ...
}
}

%\details{}

\source{
ftp://ftp.ncdc.noaa.gov/pub/data/paleo/pollen/asciifiles/fossil/ascfiles/gpd/rogerslk.txt
}

\references{

Davis, M.B. 1967. Pollen accumulation rates at Rogers Lake, Connecticut, during late- and postglacial time. Review of Paleobotany and Palynology 2:219-230.

Davis, M.B., and E.S. Deevey, Jr. 1964. Pollen accumulation rates: estimates from late-glacial sediment of Rogers Lake. Science 145:1293-1295.

Davis, M.B. 1969. Climatic changes in southern Connecticut recorded by pollen deposition at Rogers Lake. Ecology 50:409-422.

}
\examples{
data(rogerslk)
str(rogerslk)
}
\keyword{datasets}
