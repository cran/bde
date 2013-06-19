\name{BrVitale}
\Rdversion{1.1}
\docType{class}
\alias{BrVitale}
\alias{BrVitale-class}


\title{Class \code{"BrVitale"}}
\description{
This class deals with bias reduced version of Vitale (1975) Bernstein Polynomial approximation as described in Leblanc (2009). The polynomial estimator is computed using the provided data samples. Using this polynomial estimator, the methods implemented in the class can be used to compute densities, values of the distribution function, quantiles, sample the distribution and obtain graphical representations. 
}
\section{Objects from the Class}{
Objects can be created by using the generator function \code{\link{brVitale}}.
%%  ~~ describe objects here ~~ 
}
\section{Slots}{
  \describe{   
    \item{\code{dataPointsCache}:}{a numeric vector containing points within the \code{[lower.limit,upper.limit]} interval}
    \item{\code{densityCache}:}{a numeric vector containing the density for each point in \code{dataPointsCache}}
    \item{\code{distributionCache}:}{a numeric vector used to cache the values of the distribution function. This slot is included to improve the performance of the methods when multiple calculations of the distribution function are used}
    \item{\code{dataPoints}:}{a numeric vector containing data samples within the \code{[lower.limit,upper.limit]} interval. These data samples are used to obtain the kernel estimator}
    \item{\code{m}:}{the order of the polynomial approximation}    
    \item{\code{M}:}{a numeric parameter for bias reduction. Usually this parameter is set to \code{m/2} since it leads to optimal MISE (mean integrated squared error) properties}
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
    \item{getdataPoints}{See \code{"\link[=getdataPoints]{getdataPoints}"} for details} 
    \item{getm}{See \code{"\link[=getm]{getm}"} for details} 
    \item{getM}{See \code{"\link[=getM]{getM}"} for details} 
	 }
}
\author{
Guzman Santafe, Borja Calvo and Aritz Perez
}
\examples{
# create the model 
model <- brVitale(dataPoints = tuna.r, m = 25, M = 25/2)


# examples of usual functions
density(model,0.5)

distribution(model,0.5,discreteApproximation=FALSE)
 
# graphical representation
hist(tuna.r,freq=FALSE,main="Tuna Data")
lines(model, col="red",lwd=2)

# graphical representation using ggplot2 
graph <- gplot(model,show=TRUE,includePoints=TRUE)
}
\references{
  Vitale, R. A. (1975). A Bernstein polynomial approach to density function estimation.
  \emph{tatistical Inference and Related Topics}, 2, 87-99.
  
  Leblanc, A. (2010). A bias-reduced approach to density estimation using Bernstein polynomials.
  \emph{Journal of Nonparametric Statistics}, 22(4), 459-475.  
}

\keyword{classes}
