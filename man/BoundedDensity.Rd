\name{BoundedDensity}
\Rdversion{1.1}
\docType{class}
\alias{BoundedDensity}
\alias{BoundedDensity-class}


\title{Class \code{"BoundedDensity"}}
\description{
This class deals with generic estimations of a bounded densities. The probability density function is approximated by providing a set of data points in a lower and upper bounded interval and their associated densities. Using this information, the methods implemented in the class can be used to compute densities, values of the distribution function, quantiles, sample the distribution and obtain graphical representations.
}
\section{Objects from the Class}{
Objects can be created by using the generator function \code{\link{boundedDensity}}.
%%  ~~ describe objects here ~~ 
}
\section{Slots}{
  \describe{
   \item{\code{dataPointsCache}:}{a numeric vector containing points within the \code{[lower.limit,upper.limit]} interval}
    \item{\code{densityCache}:}{a numeric vector containing the density for each point in \code{dataPointsCache}}
    \item{\code{distributionCache}:}{a numeric vector used to cache the values of the distribution function. This slot is included to improve the performance of the methods when multiple calculations of the distribution function are used}
    \item{\code{lower.limit}:}{a numeric value for the lower limit of the bounded interval for the data}
    \item{\code{upper.limit}:}{a numeric value for the upper limit of the bounded interval for the data}
  }
}
\section{Methods}{
  \describe{
    \item{density}{See \code{"\link[=density]{density}"} for details} 
    \item{distribution}{See \code{"\link[=distribution]{distribution}"} for details} 
    \item{quantile}{See \code{"\link[=quantile]{quantile}"} for details} 
    \item{rsample}{See \code{"\link[=rsample]{rsample}"} for details} 
    \item{plot}{See \code{"\link[=plot]{plot}"} for details} 
    \item{getdataPointsCache}{See \code{"\link[=getdataPointsCache]{getdataPointsCache}"} for details} 
    \item{getdensityCache}{See \code{"\link[=getdensityCache]{getdensityCache}"} for details} 
    \item{getdistributionCache}{See \code{"\link[=getdistributionCache]{getdistributionCache}"} for details} 
	 }
}
\author{
Guzman Santafe, Borja Calvo and Aritz Perez
}
\examples{
# data points and its densities
a <- seq(0,1,0.01)
b <- dbeta(a,5,10)

# create the density model
model <- boundedDensity(x=a,densities=b)

# examples of usual functions
density(model,0.5)

distribution(model,0.2,discreteApproximation=FALSE)
distribution(model,0.2,discreteApproximation=TRUE)
 
# graphical representation
hist(b,freq=FALSE)
lines(model, col="red",lwd=2)

}
\keyword{classes}
