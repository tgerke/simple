# lStopRule Module Vignette

## Introduction

This vignette aims to describe the module *lStopRule* of the *simple*
package. The purpose of the module is to control under which conditions
the platform trial simulation stops.

## Function arguments

As input variables to determine whether the platform trial shoudl end at
time **t**, the module will take the platform trial status at time
**t**, as well as arguments specific to the intervention inclusion.

#### Current status of platform trial `lPltfTrial`

This is a snapshot image of the current platform trial status and
changes during the simulation. The current time or number of ISAs with a
final decision could be examples of variables of interest which we would
like to access.

#### Additional arguments `lAddArgs`

Apart from global variables, module specific variables can be added.

## Functions

### Constructor Function `new_lStopRule`

The idea is to be able to include the platform snapshot as well as any
additionally relevant variables outside the simulation.

The central function of the module is `new_lStopRule`. It defines the
“rules” of when to stop the platform trial simulation.

``` r
new_lStopRule()
```

    ## $fnStopRule
    ## function (lPltfTrial, lAddArgs) 
    ## {
    ## }
    ## <environment: 0x5631e8fc50e0>
    ## 
    ## $lAddArgs
    ## list()
    ## 
    ## attr(,"class")
    ## [1] "lStopRule"

**`$fnStopRule`** The necessary input is a function `fnStopRule`
checking if the platform trial should be stopped. In the function call
you input the snapshot variables to be used in the `lPltfTrial` argument
and determine the list with further arguments which affect your
algorithm in `lAddArgs`. Within the curly braces
[`{}`](https://rdrr.io/r/base/Paren.html) you execute the function
operations.

**`$lAddArgs`** Here you can supply the list with additional arguments,
which are accessed in the function above.

### Helper function `lStopRule`

If you do not want to think about an inclusion strategy for
interventions, you can use the helper function `lStopRule`.

``` r
lStopRule
```

    ## function (nWeeks = NULL, bNoActive = NULL) 
    ## {
    ##     if (is.null(nWeeks) & is.null(bNoActive)) {
    ##         stop("No valid stopping rules were specified.")
    ##     }
    ##     if (!is.null(nWeeks)) {
    ##         if (!(is.atomic(nWeeks) && length(nWeeks) == 1L)) {
    ##             stop("Supplied input is not a scalar")
    ##         }
    ##         if (!nWeeks == round(nWeeks)) {
    ##             stop("Supplied input is not an integer")
    ##         }
    ##     }
    ##     else {
    ##         if (!bNoActive) {
    ##             stop("bNoActive can only be TRUE or NULL.")
    ##         }
    ##     }
    ##     new_lStopRule(fnStopRule = function(lPltfTrial, lAddArgs) {
    ##         if (!is.null(nWeeks)) {
    ##             ret <- lPltfTrial$lSnap$dCurrTime >= lAddArgs$nWeeks
    ##         }
    ##         else if (bNoActive) {
    ##             ret <- all(!is.na(sapply(lPltfTrial$isa, function(x) x$cEndReason)))
    ##         }
    ##         return(ret)
    ##     }, lAddArgs = list(nWeeks = nWeeks, bNoActive = bNoActive))
    ## }
    ## <bytecode: 0x5631e93ad718>
    ## <environment: namespace:simple>

There are two default options: Stopping after a certain number of time
units (as we mostly think of a week as one time unit, this parameter is
called `nWeeks`) or after all ISAs that were entered into the platform
have a final decision and therefore no ISA is active anymore
(`bNoActive`).

### Summary

The summary call provides information about the input you provided. It
gives an overview about snapshot and additional variables as well the
function that was implemented.

``` r
summary(lStopRule(bNoActive = TRUE))
```

    ## Specified accrual function: 
    ## [1] "if (!is.null(nWeeks)) {\n    ret <- lPltfTrial$lSnap$dCurrTime >= lAddArgs$nWeeks\n} else if (bNoActive) {\n    ret <- all(!is.na(sapply(lPltfTrial$isa, function(x) x$cEndReason)))\n}"
    ## 
    ##  Specified arguments: 
    ## $nWeeks
    ## NULL
    ## 
    ## $bNoActive
    ## [1] TRUE

## Examples

1.  **Stopping after a certain number of time units**

Stopping after 100 time units:

``` r
x <- lStopRule(nWeeks = 100)
summary(x)
```

    ## Specified accrual function: 
    ## [1] "if (!is.null(nWeeks)) {\n    ret <- lPltfTrial$lSnap$dCurrTime >= lAddArgs$nWeeks\n} else if (bNoActive) {\n    ret <- all(!is.na(sapply(lPltfTrial$isa, function(x) x$cEndReason)))\n}"
    ## 
    ##  Specified arguments: 
    ## $nWeeks
    ## [1] 100
    ## 
    ## $bNoActive
    ## NULL

------------------------------------------------------------------------

2.  **Stopping when no ISA is active anymore**

``` r
x <- lStopRule(bNoActive = TRUE)
summary(x)
```

    ## Specified accrual function: 
    ## [1] "if (!is.null(nWeeks)) {\n    ret <- lPltfTrial$lSnap$dCurrTime >= lAddArgs$nWeeks\n} else if (bNoActive) {\n    ret <- all(!is.na(sapply(lPltfTrial$isa, function(x) x$cEndReason)))\n}"
    ## 
    ##  Specified arguments: 
    ## $nWeeks
    ## NULL
    ## 
    ## $bNoActive
    ## [1] TRUE

------------------------------------------------------------------------

3.  **Stop after the first postitive decision has been made for any
    ISA**

Please note that the way these stopping rules are dependent on how
“positive decision” was defined in the `lSynthRes` modules. We assume
here (and this is set by default) that a positive decision is coded by a
“Efficacy” string in the object `cEndReason` object of the ISAs.

``` r
# Check if for any ISA a positive decision was made

x <- 
  new_lStopRule(
    fnStopRule  = function(lPltfTrial, lAddArgs) {
      
      ret <- 
        ifelse(
          any(
            sapply(lPltfTrial$isa, function(x) x$cEndReason) == "Efficacy", 
            na.rm = TRUE
            ), 
          1, 
          0
        )
      
      return(ret)
      
    },
    lAddArgs      = list()
  )
```

### Remarks

The snapshot variables saved in the list *lPltfTrial* have a fixed name
which should not be changed as it is implemented in many different
modules. As mentioned above the vignette of the module *lSnap* will
contain an overview of all the snapshot variables used in any module.
