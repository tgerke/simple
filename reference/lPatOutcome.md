# Simulate patient outcomes

Functions and rules for simulation of patient outcomes of class
lPatOutcome

## Usage

``` r
new_lPatOutcome(
  fnPatOutcome = function(lPltfTrial, lAddArgs) {
 },
  lAddArgs = list()
)

validate_lPatOutcome(x)

lPatOutcome(cGroups, dTheta, dSigma = NULL, dTrend, nLag)
```

## Arguments

- fnPatOutcome:

  Function that simulates patient outcomes based on allocation and
  design

- lAddArgs:

  Further arguments used in fnPatOutcome

- x:

  An object of class lPatOutcome

- cGroups:

  Group names to which the thetas apply

- dTheta:

  Location parameters for cGroups

- dSigma:

  Standard deviation for continuous outcomes

- dTrend:

  Time trend parameter

- nLag:

  Lag parameter

## Examples

``` r
if (FALSE) { # \dontrun{
# Internal module used by platform trial simulation
x <- lPatOutcome()
} # }
```
