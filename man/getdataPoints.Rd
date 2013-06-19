\name{getdataPoints}
\alias{getdataPoints}
\alias{getdataPoints-methods}
\alias{getdataPoints,KernelDensity-method}
\alias{getdataPoints,Chen99kernel-method}
\alias{getdataPoints,MicroBetaChen99Kernel-method}
\alias{getdataPoints,MacroBetaChen99Kernel-method}
\alias{getdataPoints,NoBoundaryKernel-method}
\alias{getdataPoints,Muller91BoundaryKernel-method}
\alias{getdataPoints,Muller94BoundaryKernel-method}
\alias{getdataPoints,NormalizedBoundaryKernel-method}
\alias{getdataPoints,BernsteinPolynomials-method}
\alias{getdataPoints,Vitale-method}
\alias{getdataPoints,BrVitale-method}
\alias{getdataPoints,KakizawaB1-method}
\alias{getdataPoints,KakizawaB2-method}
\alias{getdataPoints,KakizawaB3-method}
\alias{getdataPoints,HirukawaJLNKernel-method}
\alias{getdataPoints,HirukawaTSKernel-method}
\alias{getdataPoints,MacroBetaHirukawaJLNKernel-method}
\alias{getdataPoints,MacroBetaHirukawaTSKernel-method}

\title{Accesor method for \code{dataPoints} slot}
\description{
 This method obtains the values stored in the \code{DataPoints} slot of a bounded density object. This slot contains the data sample used to estimate the density model.
}

\section{Methods}{
\describe{

\item{\code{getdataPoints(.Object)}}{
%%  ~~describe this method here~~
}
}}

\arguments{
\item{\code{.Object}}{A bounded density estimator.  See all the accepted classes by running the commands \code{getSubclasses("KernelDensity")} and \code{getSubclasses("BernsteinPolynomials")}.}
}

\keyword{methods}

