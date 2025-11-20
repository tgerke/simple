# List of current trial snapshot

List of snapshot variables to be extracted in simulations and passed to
different methods

## Usage

``` r
new_lSnap(
  fnSnap = function(lPltfTrial, lAddArgs) {
 },
  lAddArgs = list()
)

validate_lSnap(x)

lSnap()

# S3 method for class 'lSnap'
summary(object, ...)
```

## Arguments

- fnSnap:

  Function which creates snapshots of the current platform trial state

- lAddArgs:

  Further arguments used in fnSnap

- x:

  An object of class lSnap

- object:

  An object of class lSnap

- ...:

  Additional arguments (not used)

## Examples

``` r
if (FALSE) { # \dontrun{
# Internal module used by platform trial simulation
x <- lSnap()
} # }
```
