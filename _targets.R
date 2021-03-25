## Load your packages, e.g. library(targets).
source("./packages.R")

## Load your R files
lapply(list.files("./R", full.names = TRUE), source)

## tar_plan supports drake-style targets and also tar_target()
tar_plan(
  
  tar_target(Part1GenotypeFile, 
             "Data/Lines for Flood Study.xlsx",
             format = "file"),
  
  # Give arguments to the field book fucntion as lists
  Parameters_Part1 = list("Treatment"  = c("Flooded", "80%", "100%"), 
                           "Genotypes"  = read_excel(Part1GenotypeFile)$Line, 
                           "Reps"       = 4, 
                           "Phenotypes" = c("Num_Emerged", "Primary_Root_Length")),
  
  Parameters_Part2 = list("Treatment" = c("Flooded", "80%", "100%"), 
                           "Genotypes" = c("N11-352", "Dunphy", "N10-792", "N11-7414"), 
                           "Reps"      = 8, 
                           "Phenotypes" = c("HT", 
                                            "LOD", 
                                            "Chlorophyl", 
                                            "Root_biomass_wet", 
                                            "Shoot_biomass_wet", 
                                            "Root_biomass_dry", 
                                            "Shoot_biomass_dry")),

  # Make the field books" using the experimental design paramaters set above
  FieldbookData_Part1 = make_FieldBook(ParameterList = Parameters_Part1, seed = 5457185),
  FieldbookData_Part2 = make_FieldBook(ParameterList = Parameters_Part2, seed = 2387445),

  
  tar_render(analysis, "README.Rmd")

)
