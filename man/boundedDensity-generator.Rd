\name{boundedDensity}
\Rdversion{1.1}
%\docType{genericFunction}
\alias{boundedDensity}
\alias{boundedDensity-generator}

\title{\code{BoundedDensity} generator method}
\description{
  User friendly constructor method for \code{BoundedDensity} objects.
}
\usage{
boundedDensity(x,densities,lower.limit=0,upper.limit=1)
}
\arguments{
\item{x}{a numeric vector containing data samples within the \code{[lower.limit,upper.limit]} interval.}
\item{densities}{a numeric vector containing the density for each point in \code{x}}
\item{lower.limit}{a numeric value for the lower limit of the bounded interval for the data}
\item{upper.limit}{a numeric value for the upper limit of the bounded interval for the data. That is, the data is with the \code{[lower.limit,upper.limit]} interval}
}
\details{
 \describe{
    See \code{\linkS4class{BoundedDensity}} class for more details.
  }
}

\keyword{generator-methods}
