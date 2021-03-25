##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param Treatments
##' @param Genotypes
##' @param nReps
##' @param seed
##' 
##' 

Parameters_Part1 <- list("Treatment" = c("Flooded", "80%", "100%"), 
                         "Genotypes" = c("N11-352", "Dunphy", "N10-792", "N11-7414"), 
                         "Reps"      = 8, 
                         "Phenotypes" = c("HT", 
                                          "LOD", 
                                          "Chlorophyl", 
                                          "Root_biomass_wet", 
                                          "Shoot_biomass_wet", 
                                          "Root_biomass_dry", 
                                          "Shoot_biomass_dry"))

make_FieldBook <- function(ParameterList = Parameters_Part1, seed = 2387445) {
  
  Treatments <- ParameterList$Treatment
  Genotypes  <- ParameterList$Genotype
  nReps      <- ParameterList$Reps
  
  # Convert treatments, genotypes to factors
  Treatments <- factor(Treatments)
  Genotypes  <- factor(Genotypes)
  
  trt <- c(nlevels(Treatments), nlevels(Genotypes))
  
  FieldBook <- design.ab(trt, 
                         r      = nReps, 
                         serie  = 1, 
                         design = "rcbd",
                         seed   = seed)
  
  # Replace factor levels with their labels
  FieldBook$book$A <- Treatments[as.numeric(FieldBook$book$A)]
  FieldBook$book$B <- Genotypes[as.numeric(FieldBook$book$B)]
  
  
  FieldBook$book %>% group_by(A) %>%
    mutate(plots = 1:n()) %>%
    ungroup() %>%
    rename(Plot            = plots, 
           Rep             = block, 
           Flood_Condition = A, 
           Genotype        = B) %>%
    arrange(Flood_Condition, Rep, Plot) -> FieldBook$book
  
  FieldBook$book[, ParameterList$Phenotypes] = NA
  
  FieldBook
}
