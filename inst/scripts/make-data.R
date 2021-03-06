##########################################
## EH176 Dataset
##########################################

# Microarray data was downloaded from GEO record GSE64985, and then the following script was used to prepare the GSE64985 ExpressionSet:

EData <- read.table('GSE64985_re-analysis_of_GPL570.txt', sep = ' ', header = TRUE, row.names = 1)  # Downloaded from http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE64985

require(GEOmetadb)
getSQLiteFile()
con <- dbConnect(SQLite(), 'GEOmetadb.sqlite')
rs <- dbGetQuery(con, paste("select gsm,title,description", "from gsm where gpl='GPL570'"))
dbDisconnect(con)

rs2 <- rs[match(colnames(EData), rs[,1]),]
rownames(rs2) <- colnames(EData)
rs2[is.na(rs2[,2]),2] <- '--'
rs2[is.na(rs2[,3]),3] <- '--'

require('Biobase')
EH176 <- ExpressionSet(assayData = EData, phenoData = new("AnnotatedDataFrame", data = rs2[,-1]))




##########################################
## EH177 Dataset
##########################################

#  A large, normalized expression dataset containing data from 5372 Affymetrix arrays (along with associated phenotypic information) was downloaded from ArrayExpress accession E-MTAB-62 (https://www.ebi.ac.uk/arrayexpress/experiments/E-MTAB-62/). The data was then processed using the R package bias 0.0.3 to reduce the impace of technical bias (Eklund and Szallasi, 2008). Probesets were mapped to Entrez IDs using the Bioconductor annotation package hgu133a.db, and values for probes mapping to the same gene ID were averaged. Phenotypic information was derived from the E-MTAB-62 record on ArrayExpress.

