\name{mohawk}
\alias{mohawk}
\docType{data}
\title{Mohawk Pond}
\description{
  A pollen core from Mohawk Pond, Connecticut in the data structure produced by \code{\link{readGPDascii}}}
\usage{data(mohawk)}
\format{
  The output format is a data frame with columns:

\tabular{ll}{ 
  $counts \tab count matrix with species in columns, depths in rows \cr
\tab num [1:50, 1:101] 0 0 0 0 0 0 0 0 0 1 ...\cr
\tab  ..- attr(*, "dimnames")=List of 2\cr
\tab  .. ..$ : chr [1:50] "10" "50" "85" "110" ...\cr
\tab  .. ..$ : chr [1:101] "Abi     " "Ace.ne  " "Ace.ru  " "Ace.sc-t" ...\cr
  $depths \tab num [1:50] 10 50 85 110 140 190 210 250 290 310 ...\cr
  $sample.names \tab chr [1:50] " " " " " " " " ...\cr
  $absolute.ages \tab num [1:50]  200  365  602  814 1103 ...\cr
  $taxa \tab chr [1:101] "Abies" "Acer negundo" "Acer rubrum" "Acer saccharinum-type" ...\cr
  $short.names \tab chr [1:101] "Abi     " "Ace.ne  " "Ace.ru  " "Ace.sc-t" ...\cr
  $tax.cat \tab Factor w/ 8 levels "-","A","B","F",..: 2 2 2 2 2 2 2 2 2 2 ...\cr
  $metadata \tab chr [1:75] " GPD ASCII Format" " 24 Apr 00" " Raw Counts - All Pollen Types" "" ...
}
}

\details{}
\source{
ftp://ftp.ncdc.noaa.gov/pub/data/paleo/pollen/asciifiles/fossil/ascfiles/gpd/mohawk.txt
}
\references{

Steventon, R.L., and J.E. Kutzbach. 1983. University of Wisconsin radiocarbon dates XX. Radiocarbon 25:152-168.

Steventon, R.L., and J.E. Kutzbach. 1986. University of Wisconsin radiocarbon dates XXIII. Radiocarbon 28:1206-1223.

Gaudreau, D.C. 1986. Late-Quaternary vegetational history of the northeast: paleoecological implications of topographic patterns in pollen distributions. Dissertation. Yale University, New Haven, Connecticut, USA.

Steventon, R.L., and J.E. Kutzbach. 1984. University of Wisconsin radiocarbon dates XXI. Radiocarbon 26:135-147.

}
\examples{
data(mohawk)
str(mohawk)
}
\keyword{datasets}