# Recruitment Parameters

Functions for creating, validating and simple use of class lRecrPars

## Usage

``` r
new_lRecrPars(
  fnRecrProc = function(lPltfTrial, lAddArgs) {
 },
  lAddArgs = list()
)

validate_lRecrPars(x)

lRecrPars(nPat)

# S3 method for class 'lRecrPars'
plot(x, dCurrTime = 1:52, ...)

# S3 method for class 'lRecrPars'
summary(object, ...)
```

## Arguments

- fnRecrProc:

  Function which simulates number of new patient arrivals

- lAddArgs:

  Further arguments used in recruitment function

- x:

  An object of class lRecrPars

- nPat:

  Number of patients

- dCurrTime:

  Vector of current time steps (default 1:52)

- ...:

  Additional arguments (not used)

- object:

  An object of class lRecrPars

## Examples

``` r
x <- lRecrPars(4)
validate_lRecrPars(x)
plot(x)

summary(x)
#> Specified accrual function: 
#> [1] "lAddArgs$nPat"
#> 
#>  Specified arguments: 
#> $nPat
#> [1] 4
#> 
```
