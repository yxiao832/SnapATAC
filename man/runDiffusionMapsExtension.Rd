% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/runLDM.R
\name{runDiffusionMapsExtension}
\alias{runDiffusionMapsExtension}
\title{Diffusion Maps Extension}
\usage{
runDiffusionMapsExtension(obj1, obj2, input.mat = c("bmat", "pmat"))
}
\arguments{
\item{obj1}{A snap obj for reference dataset}

\item{obj2}{A snap obj for query dataset}

\item{input.mat}{Input matrix c("bmat", "pmat").}
}
\description{
This function takes two snap objects - one for reference dataset and one for query 
dataset and computes the diffusion maps embedding for the query dataset by projecting
the query cells into the pre-computed diffusion.
}
\details{
The computational complexity of diffusion maps algorithm exhibits quadratic 
growth with the increase of cells, making it infeasible for large-scale datasets. 
To overcome this limitation, we apply Nystrom landmark diffusion map algorithm 
to efficiently generate the low-dimension embedding for large-scale dataset. 
A practical Nystrom landmark diffusion map algorithm project the query dataset 
onto the low-dimensional embedding space as learned from the refernce dataset 
to create a embedding space for query cells.
}
\examples{
data(demo.sp);
demo.sp = makeBinary(demo.sp);
}
