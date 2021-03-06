% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interpret_odds.R
\name{interpret_odds_posterior}
\alias{interpret_odds_posterior}
\title{Odds ratio interpreation for a posterior distribution.}
\usage{
interpret_odds_posterior(posterior, log = FALSE, rules = "chen2010")
}
\arguments{
\item{posterior}{Posterior distribution of odds ratio.}

\item{log}{Are these log odds ratio?}

\item{rules}{Can be "chen2010" (default), or a custom list.}
}
\description{
Interpret odds with a set of rules.
}
\examples{
library(psycho)
posterior <- rnorm(1000, 0.6, 0.05)
interpret_odds_posterior(posterior)
interpret_odds_posterior(rnorm(1000, 0.1, 1))
interpret_odds_posterior(rnorm(1000, 3, 1.5))

}
\author{
\href{https://dominiquemakowski.github.io/}{Dominique Makowski}
}
