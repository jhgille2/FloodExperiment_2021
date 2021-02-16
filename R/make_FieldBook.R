##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param Treatments
##' @param Genotypes
##' @param nReps
##' @param seed
make_FieldBook <- function(Treatments, Genotypes, nReps, seed = 2387445) {
  
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
  
  
  FieldBook$book %>%
    mutate(plots = 1:n()) %>%
    ungroup() %>%
    rename(Plot            = plots, 
           Rep             = block, 
           Flood_Condition = A, 
           Genotype        = B) %>%
    add_column(HT                = NA,
               LOD               = NA,
               #SQ            = NA,
               Chlorophyl        = NA,
               Root_biomass_wet  = NA,
               Shoot_biomass_wet = NA,
               Root_biomass_dry  = NA,
               Shoot_biomass_dry = NA) %>%
    arrange(Flood_Condition, Rep, Plot) -> FieldBook$book
  
  FieldBook
}
