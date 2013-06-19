\name{tuna.r}
\docType{data}
\alias{tuna.r}

\title{Scaled \code{tuna} data}
\description{
The \code{tuna} data come from an aerial line transect survey of Southern Bluefin Tuna in the Great Australian Bight and it is included in the \code{boot} package. The \code{tuna.r} data is a scaled version of the \code{tuna} data within the [0,1] interval. This new data set is obtained as follows:

\code{library(boot)}

\code{tuna.r <- tuna$y/17}
}

\usage{tuna.r}
\format{A vector containing 64 observations.}
\source{The data were obtained from 

Chen, S.X. (1996). Empirical likelihood confidence intervals for nonparametric density estimation. 
\emph{Biometrica}, 83, 329-341.}

\seealso{
\code{\link[boot]{tuna}}
}

\keyword{datasets}