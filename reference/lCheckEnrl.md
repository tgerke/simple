# Check ISA Enrollment

Functions and rules for within ISA checking of Enrollment of class
lCheckEnrl

## Usage

``` r
new_lCheckEnrl(
  fnCheckEnrl = function(lPltfTrial, lAddArgs) {
 },
  lAddArgs = list()
)

validate_lCheckEnrl(x)

lCheckEnrl()

# S3 method for class 'lCheckEnrl'
summary(object, ...)
```

## Arguments

- fnCheckEnrl:

  Function that checks if an ISA is still actively enrolling

- lAddArgs:

  Further arguments used in fnCheckEnrl

- x:

  An object of class lCheckEnrl

- object:

  An object of class lCheckEnrl

- ...:

  Additional arguments (not used)

## Examples

``` r
if (FALSE) { # \dontrun{
# Internal module used by platform trial simulation
x <- lCheckEnrl()
} # }
```
