setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
cat("Working directory: ", getwd())

# run on old computer /r version
packages <- installed.packages()[,"Package"]
save(packages, file="Rpkgs.RData")


# run on new computer /r version
load("Rpkgs.RData")
for (p in setdiff(packages, installed.packages()[,"Package"]))
  install.packages(p)