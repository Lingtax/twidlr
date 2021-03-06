% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/randomForest.R
\name{randomForest}
\alias{randomForest}
\title{data.frame-first formula-second method for \code{\link[randomForest]{randomForest}}}
\usage{
randomForest(data, formula, ...)
}
\arguments{
\item{data}{Data frame containing the variables in the model}

\item{formula}{\code{\link[stats]{formula}} describing the model to be fitted}

\item{...}{Additional arguments to pass to model function}
}
\description{
This function passes a data.frame, formula, and additional arguments to
\code{\link[randomForest]{randomForest}}.
}
\examples{
randomForest(mtcars, hp ~ .)

# Help page for function being twiddled
?randomForest::randomForest
}
\seealso{
\code{\link[randomForest]{randomForest}}
}
