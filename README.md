N11-352 Flood tolerance experiment
================

## Introduction

The goal of this experiment is to test if the **N11-325** soybean
genotype possesses flood tolerance. This will be a greenhouse experiment
and the general strategy will be to compare the **N11-325** genotype to
other genotypes which are already known to have or lack flood tolerance
to determine if this new genotype possesses, or lacks flood tolerance
traits.

## Experimental design

Five genotypes will be grown in flodded and non-flooded conditions in 8
replications within each environment. The genotypes are:

-   N11-352
-   Dunphy
-   Roy
-   N10-792
-   Flood-Susceptible (From Tommy/Ben/Paul)

Three seeds from each genotype will be planted for each replication x
treatment combination. Thin these plants to one plant per pot after
emergence. After plants have been thinned, transfer the pots to their
treatment tanks as per the field book. Be sure to follow the plot order
when putting them into the tanks as this is randomized and it will make
it easier to find a plot if a label floats away or something like that.

Because there are 5 genotypes, and 8 reps of each genotype per
treatment, each treatment has 40 plots (pots) in total. Pots are
numbered 1-40 for each treatment. See the table below to see what this
looks like for the first 5 entries for each condition.

    ## [90m# A tibble: 10 x 11[39m
    ##     Plot Rep   Flood_Condition Genotype  HT    LOD   Chlorophyl Root_biomass_wet
    ##    [3m[90m<int>[39m[23m [3m[90m<fct>[39m[23m [3m[90m<fct>[39m[23m           [3m[90m<fct>[39m[23m     [3m[90m<lgl>[39m[23m [3m[90m<lgl>[39m[23m [3m[90m<lgl>[39m[23m      [3m[90m<lgl>[39m[23m           
    ## [90m 1[39m     1 1     Flooded         Roy       [31mNA[39m    [31mNA[39m    [31mNA[39m         [31mNA[39m              
    ## [90m 2[39m     2 1     Flooded         Flood_Su~ [31mNA[39m    [31mNA[39m    [31mNA[39m         [31mNA[39m              
    ## [90m 3[39m     3 1     Flooded         Dunphy    [31mNA[39m    [31mNA[39m    [31mNA[39m         [31mNA[39m              
    ## [90m 4[39m     4 1     Flooded         Flood_To~ [31mNA[39m    [31mNA[39m    [31mNA[39m         [31mNA[39m              
    ## [90m 5[39m     5 1     Flooded         N11-352   [31mNA[39m    [31mNA[39m    [31mNA[39m         [31mNA[39m              
    ## [90m 6[39m     1 1     Not_Flooded     Flood_Su~ [31mNA[39m    [31mNA[39m    [31mNA[39m         [31mNA[39m              
    ## [90m 7[39m     2 1     Not_Flooded     Dunphy    [31mNA[39m    [31mNA[39m    [31mNA[39m         [31mNA[39m              
    ## [90m 8[39m     3 1     Not_Flooded     Flood_To~ [31mNA[39m    [31mNA[39m    [31mNA[39m         [31mNA[39m              
    ## [90m 9[39m     4 1     Not_Flooded     Roy       [31mNA[39m    [31mNA[39m    [31mNA[39m         [31mNA[39m              
    ## [90m10[39m     5 1     Not_Flooded     N11-352   [31mNA[39m    [31mNA[39m    [31mNA[39m         [31mNA[39m              
    ## [90m# ... with 3 more variables: Shoot_biomass_wet <lgl>, Root_biomass_dry <lgl>,[39m
    ## [90m#   Shoot_biomass_dry <lgl>[39m

Once plants have reached the V2 growth stage, (two unfurled trifoliates,
see the image below), flood the two flood treatment tanks and continue
watering the two non-flooded tanks as usual. Release flood conditions
after seven days.  
<center>

![Soybean growth
stages](https://prairiecalifornian.com/wp-content/uploads/2015/07/SoybeanGrowthStages-image1.jpg)

</center>

Take field visual ratings (see the field book).

Take chlorophyll measurements **FIND PROCEDURE**.

After about 2 weeks, or when the V5 stage is reached, collect the shoot
and root from each pot. Take the wet biomass of shoot and root. **FIND
PROCEDURE**.

Root architecture measurements?

Dry root and shoot for ten days at 60 degree C.

**Find other variables related to flood tolerance**

## Data analysis

<<<<<<< HEAD
The objective of this experiment is to determine if N11-352 possesses
flood-tolerance. The purpose of this section will be to define precisely
what qualifies as “flood-tolerant” in terms of the variables that are
measured in this study.  
The most important variables to consider are the biomass variables, both
wet and dry, although root architecture will provide interesting
meta-data to consider *why* the genotype may perform as it does. The
general model for evaluating the performance of a genotype following
some flood-tolerant relevant variable will be:

*y*<sub>*i**j**k*</sub> = *μ* + *F*<sub>*i*</sub> + *R*(*F*)<sub>*i**j*</sub> + *G*<sub>*k*</sub> + *G**L*<sub>*i**k*</sub> + *ϵ**i**j**k*
  
Where *y*<sub>*i**j**k*</sub> is the response variable (ex. wet/dry
biomass) for some plot, *F*<sub>*i*</sub> is the effect of environment
*i* (flooded or not flooded), *R*(*F*)<sub>*i**j*</sub> is the effect of
replication *j* nested within flood treatment *i*, *G*<sub>*k*</sub> is
the effect of genotype *G*, and *ϵ*<sub>*i*</sub>*j**k* is the residual
error. Following this model, the significance of the main factors
(genotype and flood condition) can be validated. In other words, we can
check if the genotype and/or the environmental conditions had a
significant influence on the variables relevant to flood tolerance.
Following this check, we can then proceed to check if the performance of
**N11-325** is at least as good as the drought tolerant variety.
=======
 - Need to define a quantitative measure for flood tolerance.
>>>>>>> 592e20e749c78c19f675300c5fa7b03ff4b2df88
