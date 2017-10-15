#!/usr/bin/Rscript
library(ggmap)

kecamatan = read.csv("../data/districts.csv",sep = ",")
kecamatan = as.character(kecamatan[,3])

kec = list()
for(i in 1:4){
  kec[[i]] = geocode(kecamatan[i])
}

save(file = "../data/kec.Rda",kec)



