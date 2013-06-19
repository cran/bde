\name{plot}
\alias{plot}
\alias{plot-methods}
\alias{plot,BoundedDensity-method}
\alias{plot,KernelDensity-method}
\alias{plot,Chen99Kernel-method}
\alias{plot,MicroBetaChen99Kernel-method}
\alias{plot,MacroBetaChen99Kernel-method}
\alias{plot,BoundaryKernel-method}
\alias{plot,NoBoundaryKernel-method}
\alias{plot,Muller91BoundaryKernel-method}
\alias{plot,JonesCorrectionMuller91BoundaryKernel-method}
\alias{plot,Muller94BoundaryKernel-method}
\alias{plot,JonesCorrectionMuller94BoundaryKernel-method}
\alias{plot,NormalizedBoundaryKernel-method}
\alias{plot,BernsteinPolynomials-method}
\alias{plot,Vitale-method}
\alias{plot,BrVitale-method}
\alias{plot,KakizawaB1-method}
\alias{plot,KakizawaB2-method}
\alias{plot,KakizawaB3-method}
\alias{plot,HirukawaJLNKernel-method}
\alias{plot,HirukawaTSKernel-method}
\alias{plot,MacroBetaHirukawaJLNKernel-method}
\alias{plot,MacroBetaHirukawaTSKernel-method}

\title{Bounded Density Plotting}
\description{
 Function to plot bounded density probability density functions.
}
\section{Methods}{
\describe{

\item{\code{plot(x,main="Bounded density",type="l",xlab="X",ylab="Density",...)}}{
%%  ~~describe this method here~~
}
}}
\arguments{
\item{\code{x}}{A bounded density estimator. See all the accepted classes here by running the command \code{getSubclasses("BoundedDensity")}.}
\item{\code{main, type, xlab, ylab}}{Graphical parameters with default values (see \code{\link{par}}).}
\item{\code{...}}{Arguments to be passed to methods, such as (other) graphical parameters (see \code{\link{par}}).}
}
\keyword{methods}
