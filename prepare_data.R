# Packages
library(tidyverse)
library(sf)

# Load data

## Queimadas
queimadas_files <- list.files(path = "data/queimadas_inpe/", full.names = TRUE)
queimadas <- read_csv(file = queimadas_files) |>
  filter(satelite == "TERRA_M-T") |>
  st_as_sf(coords = c("lon","lat"))

st_write(queimadas, "data/queimadas.gpkg")