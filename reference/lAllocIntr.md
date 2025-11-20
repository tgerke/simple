# Between ISA allocation ratio

Functions and rules for between ISA allocation ratio of class lAllocIntr

## Usage

``` r
new_lAllocIntr(
  fnAllocIntr = function(lPltfTrial, lAddArgs) {
 },
  lAddArgs = list()
)

validate_lAllocIntr(x)

lAllocIntr()

# S3 method for class 'lAllocIntr'
summary(object, ...)
```

## Arguments

- fnAllocIntr:

  Function that handles allocation of patients between ISAs

- lAddArgs:

  Further arguments used in fnAllocIntr

- x:

  An object of class lAllocIntr

- object:

  An object of class lAllocIntr

- ...:

  Additional arguments (not used)

## Examples

``` r
if (FALSE) { # \dontrun{
# Internal module used by platform trial simulation
x <- lAllocIntr()
} # }
```
