## Load your packages, e.g. library(targets).
source("./packages.R")

## Load your R files
lapply(list.files("./R", full.names = TRUE), source)


# The treatments
Treatments <- c("Flooded", "Not_Flooded")

# The Genotypes
Genotypes <- c("N11-352", 
               "Dunphy", 
               "Roy", 
               "Flood_Tolerant",   # Actual genotype names?
               "Flood_Susceptible")

nReps <- 8


## tar_plan supports drake-style targets and also tar_target()
tar_plan(

  # Make the "field book" using the experimental design paramaters set above
  Fieldbook = make_FieldBook(Treatments = Treatments, Genotypes = Genotypes, nReps = nReps, seed = 2387445),
  
  tar_render(analysis, "README.Rmd")

)
