# Add simulated Pats to ISAs

Functions and rules for adding Pats to ISAs of class lAddPats

## Usage

``` r
new_lAddPats(
  fnAddPats = function(lPltfTrial, lAddArgs) {
 },
  lAddArgs = list()
)

validate_lAddPats(x)

lAddPats()

# S3 method for class 'lAddPats'
summary(object, ...)
```

## Arguments

- fnAddPats:

  Function that handles adding patients to respective ISAs

- lAddArgs:

  Further arguments used in fnAddPats

- x:

  An object of class lAddPats

- object:

  An object of class lAddPats

- ...:

  Additional arguments (not used)

## Examples

``` r
if (FALSE) { # \dontrun{
# Internal module used by platform trial simulation
x <- lAddPats()
} # }
```
