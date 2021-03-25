## Load your packages, e.g. library(targets).
source("./packages.R")

## Load your R files
lapply(list.files("./R", full.names = TRUE), source)

## tar_plan supports drake-style targets and also tar_target()
tar_plan(
  
  tar_target(Part1GenotypeFile, 
             "Data/Lines for Flood Study.xlsx",
             format = "file"),
  
  ## SHould refactor this code so that make_Fieldbook can take a single tibble 
  # of parameters as input instead of defining each individually
  
  # The treatments
  Treatments_Part1 = c("Flooded", "80%", "100%"),
  Treatments_Part2 = c("Flooded", "Not_Flooded"),

  
  # The Genotypes
  Genotypes_Part1 = read_excel(Part1GenotypeFile)$Line,
  Genotypes_Part2 = c("N11-352", 
                       "Dunphy", 
                       "Roy", 
                       "N10-792",
                       "N11-7414"),
  
  nReps_Part1 = 4,
  nReps_Part2 = 8,

  # Make the field books" using the experimental design paramaters set above
  FieldbookData_Part1 = make_FieldBook(Treatments = Treatments_Part1, Genotypes = Genotypes_Part1, nReps = nReps_Part1, seed = 5457185),
  FieldbookData_Part2 = make_FieldBook(Treatments = Treatments_Part2, Genotypes = Genotypes_Part2, nReps = nReps_Part2, seed = 2387445),
  
  
  Fieldbook_Part1 = FieldbookData_Part1$book %>%
    dplyr::select(Plot, Rep, Flood_Condition, Genotype) %>%
    add_column(Num_Emerged = NA,
               Primary_Root_Length = NA),
  
  tar_render(analysis, "README.Rmd")

)
