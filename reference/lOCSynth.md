# Synthesize individual trial simulations into OCs

Functions and rules for synthesizing results of class lOCSynth

## Usage

``` r
new_lOCSynth(
  fnOCSynth = function(lIndTrials, lAddArgs) {
 },
  lAddArgs = list()
)

validate_lOCSynth(x)

lOCSynth()
```

## Arguments

- fnOCSynth:

  Function that synthesizes individual trial results into operating
  characteristics

- lAddArgs:

  Further arguments used in fnOCSynth

- x:

  An object of class lOCSynth

## Examples

``` r
if (FALSE) { # \dontrun{
# Internal module used by platform trial simulation
x <- lOCSynth()
} # }
```
