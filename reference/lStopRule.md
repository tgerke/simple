# Check if Platform Stopping Rules are reached

Functions for creating, validating and simple use of class lStopRule

## Usage

``` r
new_lStopRule(
  fnStopRule = function(lPltfTrial, lAddArgs) {
 },
  lAddArgs = list()
)

validate_lStopRule(x)

lStopRule(nWeeks = NULL, bNoActive = NULL)

# S3 method for class 'lStopRule'
summary(object, ...)
```

## Arguments

- fnStopRule:

  Function which will check if Stop Rules are reached

- lAddArgs:

  Further arguments used in fnStopRule

- x:

  An object of class lStopRule

- nWeeks:

  Number of weeks parameter

- bNoActive:

  Boolean indicating if no active ISAs

- object:

  An object of class lStopRule

- ...:

  Additional arguments (not used)

## Examples

``` r
x <- lStopRule(200)
validate_lStopRule(x)
summary(x)
#> Specified accrual function: 
#> [1] "if (!is.null(nWeeks)) {\n    ret <- lPltfTrial$lSnap$dCurrTime >= lAddArgs$nWeeks\n} else if (bNoActive) {\n    ret <- all(!is.na(sapply(lPltfTrial$isa, function(x) x$cEndReason)))\n}"
#> 
#>  Specified arguments: 
#> $nWeeks
#> [1] 200
#> 
#> $bNoActive
#> NULL
#> 
```
