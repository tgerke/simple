# Initialization of ISAs

Functions for creating, validating and simple use of class lInitIntr

## Usage

``` r
new_lInitIntr(
  fnInitIntr = function(lPltfTrial, lAddArgs) {
 },
  lAddArgs = list()
)

validate_lInitIntr(x)

lInitIntr(
  cIntrName = "I_NoName",
  cArmNames = c("ArmNoName"),
  nMaxNIntr = 100,
  vRandList = as.vector(replicate(n = ceiling(nMaxNIntr/length(cArmNames)), expr =
    sample(cArmNames))),
  vMaxNArms = rep(ceiling(nMaxNIntr/length(cArmNames)), length(cArmNames))
)
```

## Arguments

- fnInitIntr:

  Function which will initialize ISAs

- lAddArgs:

  Further arguments used in fnInitIntr

- x:

  An object of class lInitIntr

- cIntrName:

  Name of the intervention

- cArmNames:

  Names of the arms

- nMaxNIntr:

  Maximum number of interventions

- vRandList:

  Randomization list

- vMaxNArms:

  Maximum number of arms

## Examples

``` r
if (FALSE) { # \dontrun{
# Internal module used by platform trial simulation
x <- lInitIntr()
} # }
```
