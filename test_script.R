
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
