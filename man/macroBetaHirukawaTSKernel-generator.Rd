\name{macroBetaHirukawaTSKernel}
\Rdversion{1.1}
%\docType{genericFunction}
\alias{macroBetaHirukawaTSKernel}
\alias{macroBetaHirukawaTSKernel-generator}

\title{\code{MacroBetaHirukawaTSKernel} generator method}
\description{
  User friendly constructor method for \code{MacroBetaHirukawaTSKernel} objects.
}
\usage{
macroBetaHirukawaTSKernel(dataPoints, c, b=length(dataPoints)^(-2/5),
                          dataPointsCache=NULL, modified = FALSE, lower.limit = 0, 
                          upper.limit = 1)
}
\arguments{
   \item{dataPoints}{a numeric vector containing data samples within the \code{[lower.limit,upper.limit]} interval. These data samples are used to obtain the kernel estimator}   
   \item{c}{a numeric value between 0 and 1. This parameter is used in the TS approximation as a smoothing parameter}
   \item{b}{the bandwidth of the kernel estimator}
   \item{dataPointsCache}{a numeric vector containing points within the \code{[lower.limit,upper.limit]} interval. These points are used for convenience to cache density and distribution values. If \code{dataPointsCache=NULL} the values are initialized to a sequence of 101 equally spaced values from \code{lower.limit} to \code{upper.limit}}
   \item{modified}{if \code{TRUE}, the modified version of the kernel estimator is used}
   \item{lower.limit}{a numeric value for the lower limit of the bounded interval for the data}
  \item{upper.limit}{a numeric value for the upper limit of the bounded interval for the data. That is, the data is with   the \code{[lower.limit,upper.limit]} interval}  
}
\details{
 \describe{
    See \code{\linkS4class{MacroBetaHirukawaTSKernel}} class for more details.
  }
}

\keyword{generator-methods}
