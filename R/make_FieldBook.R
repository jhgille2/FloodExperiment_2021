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
