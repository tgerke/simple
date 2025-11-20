# Check Analysis Milestones

Functions and rules for checking analysis milestones of class
lCheckAnlsMstn

## Usage

``` r
new_lCheckAnlsMstn(
  fnCheckAnlsMstn = function(lPltfTrial, lAddArgs) {
 },
  lAddArgs = list()
)

validate_lCheckAnlsMstn(x)

lCheckAnlsMstn(bInclude = TRUE, vInfTimes = c(1), column = "OutObsTime")
```

## Arguments

- fnCheckAnlsMstn:

  Function that checks if analysis milestones are reached

- lAddArgs:

  Further arguments used in fnCheckAnlsMstn

- x:

  An object of class lCheckAnlsMstn

- bInclude:

  Boolean indicating whether to include analysis milestone

- vInfTimes:

  Vector of information times

- column:

  Column name for observation time

## Examples

``` r
if (FALSE) { # \dontrun{
# Internal module used by platform trial simulation
x <- lCheckAnlsMstn()
} # }
```
