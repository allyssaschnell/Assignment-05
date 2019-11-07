if (!require("data.table")) install.packages("data.table")
library("data.table")
ptm <- proc.time()
header <- read.table("Real Gross Domestic Product.csv", header = TRUE,
                     sep=",", nrow = 1)
DF <- fread("Real Gross Domestic Product.csv", skip=1, sep=",",
            header=FALSE, data.table=FALSE)
setnames(DF, colnames(header))
rm(header)
FREAD_READ_TIME <- (proc.time() - ptm)
FREAD_READ_TIME

