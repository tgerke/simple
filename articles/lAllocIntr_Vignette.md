# lAllocIntr Module Vignette

## Introduction

This vignette aims to describe the module *lAllocIntr* of the *simple*
package. The purpose of the module is to facilitate between ISA
allocation of newly accrued patients. Please note the intended purpose
of this module is to execute the between ISA allocation weights computed
by the `lUpdIntrAlloc` module. They can however be overwritten by
modifying this module.

### Function arguments

As input variables to determine the between ISA allocation ratio at time
**t**, the module will take the platform trial status at time **t**, as
well as arguments specific to the between ISA allocation.

##### Current status of platform trial `lPltfTrial`

This is a snapshot image of the current platform trial status and
changes during the simulation. The current time or number of active arms
could be examples of variables of interest which we would like to
access.

##### Additional arguments `lAddArgs`

Apart from the trial snapshot, module specific variables can be added.

### Functions

#### Constructor Function

The idea is to be able to include the platform snapshot as well as any
additional variable you would want to impact the between ISA allocation.

The central function of the module is `new_lAllocIntr`. It defines the
“rules” of recruitment you want to implement in the simulation.

``` r
new_lAllocIntr()
```

    ## $fnAllocIntr
    ## function (lPltfTrial, lAddArgs) 
    ## {
    ## }
    ## <environment: 0x55fd506063d8>
    ## 
    ## $lAddArgs
    ## list()
    ## 
    ## attr(,"class")
    ## [1] "lAllocIntr"

**`$fnAllocIntr`** The necessary input is a function `fnAllocIntr`
determining how allocation ratios should be determined at a specific
point in time. In the function call you input the current platform trial
status to be used in the `lPltfTrial` argument and determine the list
with further arguments which affect this algorithm in `lAddArgs`. By
default, only the computed weights of the `lUpdIntrAlloc` module are
used. Within the curly braces [`{}`](https://rdrr.io/r/base/Paren.html)
you execute the function operations.

**`$lAddArgs`** Here you can supply the list with additional arguments,
which are accessed in the function above.

#### Helper function

It is recommended to use the helper function `lAllocIntr`. By default,
only the computed weights of the `lUpdIntrAlloc` module are used.

``` r
lAllocIntr
```

    ## function () 
    ## {
    ##     new_lAllocIntr(fnAllocIntr = function(lPltfTrial, lAddArgs) {
    ##         alloc_ratio <- sapply(lPltfTrial$lSnap$isa_temp, function(x) x$dAlloc)
    ##         if (all(alloc_ratio == 0)) {
    ##             print(paste0("Patients were not allocated to ISAs at time ", 
    ##                 lPltfTrial$lSnap$dCurrTime, " because no ISA is actively enrolling (anymore)."))
    ##         }
    ##         else {
    ##             lPltfTrial$lSnap$newdat_df$ISA <- sample(x = sapply(lPltfTrial$isa, 
    ##                 function(x) x$nID), size = nrow(lPltfTrial$lSnap$newdat_df), 
    ##                 replace = TRUE, prob = alloc_ratio/sum(alloc_ratio))
    ##         }
    ##         return(lPltfTrial)
    ##     }, lAddArgs = list())
    ## }
    ## <bytecode: 0x55fd511c00b0>
    ## <environment: namespace:simple>

No input argument to this function is needed.

#### Summary

The summary call provides information about the input you provided. It
gives an overview about snapshot and additional variables as well the
function that was implemented.

``` r
summary(lAllocIntr())
```

    ## Specified accrual function: 
    ## [1] "alloc_ratio <- sapply(lPltfTrial$lSnap$isa_temp, function(x) x$dAlloc)"
    ## 
    ##  Specified arguments: 
    ## NULL

## Final remarks

It is recommended to use the default function.
