\name{HumanAffyData-package}
\alias{HumanAffyData-package}
\alias{HumanAffyData}
\title{
GEO accession GSE64985 and ArrayExpress accession E-MTAB-62 as ExpressionSet objects
}
\description{
Re-analysis of human gene expression data generated on the Affymetrix HG_U133PlusV2 (GSE64985) and Affymetrix HG_U133A (E-MTAB-62) platforms. The original data were normalized using robust multiarray averaging (RMA) to obtain an integrated gene expression atlas across diverse biological sample types and conditions. The entire compendia comprisee 9395 arrays for GSE64985 and 5372 arrays for E-MTAB-62.
}
\details{
Contains the following two datasets:

EH176: GEO accession data GSE64985 as an ExpressionSet. This dataset is a re-analysis of human gene expression data generated on the Affymetrix HG_U133PlusV2 platform. The phenotypic data lists the 'title' and 'description' of the original GEO entries for each microarray. A script used to prepare this dataset can be found in the /inst/extscript directory. The entire compendium comprises 20,099 genes and 9,395 arrays.

EH177: ArrayExpress accession data E-MTAB-62 as an ExpressionSet. This dataset is a re-analysis of human gene expression data generated on the Affymetrix HG_U133A platform. Additional details about how the original expression data and phenotypic information was prepared can be found at E-MTAB-62 and Lukk, et al. (2010). The entire compendium comprises 12,496 genes and 5,372 arrays.
}
\source{
Gene Expression Omnibus (GEO) accession GSE64985.

Array Expression accession E-MTAB-62.
}
\references{
Engreitz JM, Daigle BJ Jr, Marshall JJ, Altman RB. Independent component analysis: mining microarray data for fundamental human gene expression modules. J Biomed Inform 2010 Dec;43(6):932-44.

Lukk M, Kapushesky M, Nikkila J, Parkinson H, Goncalves A, Huber W, Ukkonen E, Brazma A. A global map of human gene expression. Nat Biotechnol 2010, 28(4):322-4
}
\examples{
library(ExperimentHub)
hub <- ExperimentHub()
x <- query(hub, "HumanAffyData")
x
\dontrun{
## download GSE64985 resource
GSE64985 <- x[[1]]
}}
\keyword{datasets, Affymetrix}
