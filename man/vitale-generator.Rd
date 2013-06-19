\name{vitale}
\Rdversion{1.1}
%\docType{genericFunction}
\alias{vitale}
\alias{vitale-generator}

\title{\code{Vitale} generator method}
\description{
  User friendly constructor method for \code{Vitale} objects.
}
\usage{
vitale(dataPoints, m=round(length(dataPoints)^(2/5)), dataPointsCache=NULL, 
        lower.limit = 0, upper.limit = 1)
}
\arguments{
   \item{dataPoints}{a numeric vector containing data samples within the \code{[lower.limit,upper.limit]} interval. These data samples are used to obtain the kernel estimator}
   \item{m}{a integer value indicating the order of the polynomial approximation. \code{m} must take values greater than 0}
   \item{dataPointsCache}{a numeric vector containing points within the \code{[lower.limit,upper.limit]} interval. These points are used for convenience to cache density and distribution values. If \code{dataPointsCache=NULL} the values are initialized to a sequence of 101 equally spaced values from \code{lower.limit} to \code{upper.limit}}    
   \item{lower.limit}{a numeric value for the lower limit of the bounded interval for the data}
  \item{upper.limit}{a numeric value for the upper limit of the bounded interval for the data. That is, the data is with   the \code{[lower.limit,upper.limit]} interval}    
}
\details{
 \describe{
    See \code{\linkS4class{Vitale}} class for more details.
  }
}

\keyword{generator-methods}
