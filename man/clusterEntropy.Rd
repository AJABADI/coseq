% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/general-functions.R
\name{clusterEntropy}
\alias{clusterEntropy}
\title{Calculation of per-cluster entropy}
\usage{
clusterEntropy(probaPost)
}
\arguments{
\item{probaPost}{Matrix containing the conditional probabilities of belonging
to each cluster for all observations}
}
\value{
Entropy per cluster
}
\description{
Provides the calculation of per-cluster entropy, equivalent to
\deqn{Entropy(k) = \sum_{i \in C_k} \log (\tau_{ik})}
where \eqn{\tau_{ik}} is the conditional probability of gene \emph{i} belonging
to cluster \emph{k} and \eqn{C_k} corresponds to the set of indices of genes
attributed to cluster \emph{k}.
}
\examples{
## Generate artificial matrix of conditional probabilities for K=5 clusters
tmp <- matrix(runif(100*5), nrow=100, ncol=5)
probaPost <- tmp / rowSums(tmp)
clusterEntropy(probaPost)

}
\author{
Cathy Maugis-Rabusseau
}
