# Addition of ISAs into ongoing platform trial

Functions for creating, validating and simple use of class lAddIntr

## Usage

``` r
new_lAddIntr(
  fnAddIntr = function(lPltfDsgn, lPltfTrial, lAddArgs) {
 },
  lAddArgs = list()
)

validate_lAddIntr(x)

lAddIntr()

# S3 method for class 'lAddIntr'
summary(object, ...)
```

## Arguments

- fnAddIntr:

  Function which will add ISAs

- lAddArgs:

  Further arguments used in fnAddIntr

- x:

  An object of class lAddIntr

- object:

  An object of class lAddIntr

- ...:

  Additional arguments (not used)

## Examples

``` r
if (FALSE) { # \dontrun{
# Internal module used by platform trial simulation
x <- lAddIntr()
} # }
```
