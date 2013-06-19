\name{mise}
\Rdversion{1.1}
%\docType{genericFunction}
\alias{mise}

\title{Mean Integrated Squared Error}
\description{
  Computes the mean integrated squared error (MISE) for two given Bounded density objects.
}
\usage{
mise(model1,model2,discreteApproximation = TRUE)
}
\arguments{
   \item{model1}{a bounded density object. See \code{getSubclasses("BoundedDensity")} to see all the allowed class objects}   
   \item{model2}{a bounded density object. See \code{getSubclasses("BoundedDensity")} to see all the allowed class objects}   
   \item{discreteApproximation}{If \code{TRUE}, the mise is calculated using the data stored in the cache. Otherwise the integral is computed.}   
}
\examples{

# a general approximation to a Beta(1,10) distribution using BoundedDensity objects
cache <- seq(0,1,0.01)
dens  <- dbeta(cache,1,10)
bd    <- boundedDensity(x=cache,densities=dens)

# a BrVitale approximation to the Beta(1,10) distribution using a random data sample to 
# learn the model
dataSample <- rbeta(100,1,10)
kernel     <- hirukawaTSKernel(dataPoints=dataSample, b=0.1, c=0.3, 
                                dataPointsCache=cache, modified=FALSE)

# compute the mise
mise(bd,kernel,discreteApproximation=TRUE)
mise(bd,kernel,discreteApproximation=FALSE)
}

\keyword{utils-methods}
