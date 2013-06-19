\name{kakizawaB2}
\alias{kakizawaB2}
\alias{kakizawaB2-methods}
\alias{kakizawaB2,KakizawaB2-method}

\title{\code{KakizawaB2} generator method}
\description{
  User friendly constructor method for \code{KakizawaB2} objects.
}
\usage{
kakizawaB2(dataPoints, estimator=NULL,m=round(length(dataPoints)^(2/5)),
            dataPointsCache=NULL, lower.limit = 0, upper.limit = 1)
}
\arguments{
  \item{dataPoints}{a numeric vector containing data samples within the \code{[lower.limit,upper.limit]} interval. These data samples are used to obtain the kernel estimator}
   \item{estimator}{A bounded density estimator. See all the accepted classes here with getSubclasses("BoundedDensity"). If no estimator is provided here (default value = NULL), a Muller94BoundaryKernel estimator with default parameters and the same dataPoints as those give for the Kakizawa estimator is used.}
   \item{m}{a integer value indicating the order of the polynomial approximation. \code{m} must take values greater than 0}      
   \item{dataPointsCache}{a numeric vector containing points within the \code{[lower.limit,upper.limit]} interval. These points are used for convenience to cache density and distribution values. If \code{dataPointsCache=NULL} the values are initialized to a sequence of 101 equally spaced values from \code{lower.limit} to \code{upper.limit}}  
   \item{lower.limit}{a numeric value for the lower limit of the bounded interval for the data}
  \item{upper.limit}{a numeric value for the upper limit of the bounded interval for the data. That is, the data is with   the \code{[lower.limit,upper.limit]} interval}   
}
\details{
 \describe{
    See \code{\linkS4class{KakizawaB2}} class for more details.
  }
}

\keyword{generator-methods}
