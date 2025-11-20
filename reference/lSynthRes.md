# Synthesize trial results into decisions

Functions and rules for synthesizing results of class lSynthRes

## Usage

``` r
new_lSynthRes(
  fnSynthRes = function(lPltfTrial, lAddArgs) {
 },
  lAddArgs = list()
)

validate_lSynthRes(x)

lSynthRes(alpha = 0.05)
```

## Arguments

- fnSynthRes:

  Function that synthesizes analysis results and makes decisions (e.g.,
  stop for efficacy/futility)

- lAddArgs:

  Further arguments used in fnSynthRes

- x:

  An object of class lSynthRes

- alpha:

  Significance level for decision making

## Examples

``` r
if (FALSE) { # \dontrun{
# Internal module used by platform trial simulation
x <- lSynthRes()
} # }
```
