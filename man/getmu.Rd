\name{getmu}
\alias{getmu}
\alias{getmu-methods}
\alias{getmu,BoundaryKernel-method}
\alias{getmu,NoBoundaryKernel-method}
\title{Accesor method for \code{Mu} slot}
\description{
 This method obtains the values stored in the \code{mu} slot of a Boundary Kernel object. This slot contains the degree of smoothing for the boundary kernel estimator. \code{mu} can take the following values: 0 (uniform kernel), 1 (Epanechnikov kernel), 2 (bicuadratic kernel) or 3 (tricuadratic kernel).
}

\section{Methods}{
\describe{

\item{\code{getmu(.Object)}}{
%%  ~~describe this method here~~
}
}}

\arguments{
\item{\code{.Object}}{A boundary kernel density estimator. See all the accepted classes here with \code{getSubclasses("BoundaryKernel")}.}
}

\keyword{methods}

