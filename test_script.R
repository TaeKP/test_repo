
## Test library OpenCR

library(openCR)

## load("CJS_nonspatial_25Sep2023")

# 3 single session

# 1st session; year 2019
FC2019 <- read.capthist("caphist2019_L.csv", "trap2019_covs.csv", detector = "proximity", noccasions = 75, covnames = "sex", trapcovnames = "trap_night")

# 2nd session; year 2021
FC2021 <- read.capthist("caphist2021_L.csv", "trap2021_covs.csv", detector = "proximity", noccasions = 148, covnames = "sex", trapcovnames = "trap_night")

# 3rd session; year 2023
FC2023 <- read.capthist("caphist2023_L.csv", "trap2023_covs.csv", detector = "proximity", noccasions = 129, covnames = "sex", trapcovnames = "trap_night")

par(mfrow=c(1,3))
plot(FC2019, rad=50, track=TRUE)
plot(FC2021, rad=50, track=TRUE)
plot(FC2023, rad=50, track=TRUE)
par(mfrow=c(1,1))

# Set interval
## Differences in number of day in camOp table and capture history in each session

FC_KSRY_j <- join(list(FC2019, FC2021, FC2023), 
                  sessionlabels=c("2019","2021","2023"))

summary(FC_KSRY_j)

# Check and correct the intervals
attr(FC_KSRY_j, "intervals")

# Data Summary
summary(FC_KSRY_j, terse = TRUE)
