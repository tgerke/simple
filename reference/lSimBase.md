# Simulation of patient Baseline data

Functions and rules for simulating patient Baseline data of class
lSimBase

## Usage

``` r
new_lSimBase(
  fnSimBase = function(lPltfTrial, lAddArgs) {
 },
  lAddArgs = list()
)

validate_lSimBase(x)

lSimBase(vars = list(list("time", "t")), names = c("InclusionTime"))
```

## Arguments

- fnSimBase:

  Function that simulates patient baseline characteristics

- lAddArgs:

  Further arguments used in fnSimBase

- x:

  An object of class lSimBase

- vars:

  List of variables to simulate

- names:

  Names for the simulated variables

## Examples

``` r
if (FALSE) { # \dontrun{
# Internal module used by platform trial simulation
x <- lSimBase()
} # }
```
