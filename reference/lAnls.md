# Run Analysis

Functions and rules for conducting analyses of class lAnls

## Usage

``` r
new_lAnls(
  fnAnls = function(lPltfTrial, lAddArgs) {
 },
  lAddArgs = list()
)

validate_lAnls(x)

lAnls(
  endpoint = "binary",
  analysis_function_binary = function(x) {
matOutcome <- table(x$Arm, x$Outcome)
   
     if (ncol(matOutcome) == 1) {
ret <- 1
     }
     else (ret <-
    stats::prop.test(matOutcome)$p.value)
     return(ret)
 },
  analysis_function_continuous = function(x) {
     stats::t.test(Outcome ~ Arm, data =
    x)$p.value
 },
  group1 = c("C", "All"),
  group2
)
```

## Arguments

- fnAnls:

  Function that handles running statistical analyses

- lAddArgs:

  Further arguments used in fnAnls

- x:

  An object of class lAnls

- endpoint:

  Type of endpoint ("binary" or "continuous")

- analysis_function_binary:

  Analysis function for binary endpoints

- analysis_function_continuous:

  Analysis function for continuous endpoints

- group1:

  First group for comparison

- group2:

  Second group for comparison

## Examples

``` r
if (FALSE) { # \dontrun{
# Internal module used by platform trial simulation
x <- lAnls(endpoint = "binary")
} # }
```
