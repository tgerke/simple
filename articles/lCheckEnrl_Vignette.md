# lCheckEnrl Module Vignette

## Introduction

This vignette aims to describe the module checking whether enrollment to
ISAs should be stopped, *lCheckEnrl* of the *simple* package.

## Function arguments

As input variables to determine the patient accrual at time **t**, the
module will take the platform trial status at time **t**, as well as
arguments specific to the enrollment check.

#### Current status of platform trial `lPltfTrial`

This is a snapshot image of the current platform trial status and
changes during the simulation. The current time or number of enrolled
patients or conducted analyses could be examples of variables of
interest which we would like to access.

#### Additional arguments `lAddArgs`

Apart from global variables, module specific variables can be added.

## Functions

### Constructor Function `new_lCheckEnrl`

The idea is to be able to include the platform snapshot as well as any
additionally relevant variables outside the simulation.

The central function of the module is `new_lCheckEnrl`. It defines the
“rules” of checking for active enrollment you want to implement in the
simulation.

``` r
new_lCheckEnrl()
```

    ## $fnCheckEnrl
    ## function (lPltfTrial, lAddArgs) 
    ## {
    ## }
    ## <environment: 0x560ad1270438>
    ## 
    ## $lAddArgs
    ## list()
    ## 
    ## attr(,"class")
    ## [1] "lCheckEnrl"

**`$fnCheckEnrl`** The necessary input is a function `fnCheckEnrl`
checking whether enrollment to ISAs is still ongoing. In the function
call you input the snapshot variables to be used in the `lPltfTrial`
argument and determine the list with further arguments which affect your
algorithm in `lAddArgs`. Within the curly braces
[`{}`](https://rdrr.io/r/base/Paren.html) you execute the function
operations.

**`$lAddArgs`** Here you can supply the list with additional arguments,
which are accessed in the function above.

### Helper function `lCheckEnrl`

You can use the default function `lCheckEnrl`. By default it expects a
maximum sample size in every ISA and will check if this sample size was
reached.

``` r
lCheckEnrl
```

    ## function () 
    ## {
    ##     new_lCheckEnrl(fnCheckEnrl = function(lPltfTrial, lAddArgs) {
    ##         if (lPltfTrial$isa[[lAddArgs$current_id]]$nMaxNIntr <= 
    ##             nrow(do.call(rbind.data.frame, lPltfTrial$isa[[lAddArgs$current_id]]$lPats))) {
    ##             if (lPltfTrial$isa[[lAddArgs$current_id]]$bEnrl) {
    ##                 print(paste0("ISA ", lAddArgs$current_id, " has stopped enrollment at time ", 
    ##                   lPltfTrial$lSnap$dCurrTime))
    ##                 lPltfTrial$lSnap$dExitIntr <- lPltfTrial$lSnap$dExitIntr + 
    ##                   1
    ##                 lPltfTrial$isa[[lAddArgs$current_id]]$bEnrl <- FALSE
    ##                 lPltfTrial$isa[[lAddArgs$current_id]]$nEndEnrlTime <- lPltfTrial$lSnap$dCurrTime
    ##             }
    ##         }
    ##         else {
    ##             if (!is.na(lPltfTrial$isa[[lAddArgs$current_id]]$cEndReason) | 
    ##                 !is.na(lPltfTrial$isa[[lAddArgs$current_id]]$nEndTime)) {
    ##                 if (lPltfTrial$isa[[lAddArgs$current_id]]$bEnrl) {
    ##                   print(paste0("ISA ", lAddArgs$current_id, " has stopped enrollment at time ", 
    ##                     lPltfTrial$lSnap$dCurrTime))
    ##                   lPltfTrial$lSnap$dExitIntr <- lPltfTrial$lSnap$dExitIntr + 
    ##                     1
    ##                   lPltfTrial$isa[[lAddArgs$current_id]]$bEnrl <- FALSE
    ##                   lPltfTrial$isa[[lAddArgs$current_id]]$nEndEnrlTime <- lPltfTrial$lSnap$dCurrTime
    ##                   if (is.na(lPltfTrial$isa[[lAddArgs$current_id]]$cEndReason)) {
    ##                     lPltfTrial$isa[[lAddArgs$current_id]]$cEndReason <- "Other"
    ##                   }
    ##                 }
    ##             }
    ##         }
    ##         return(lPltfTrial)
    ##     }, lAddArgs = list())
    ## }
    ## <bytecode: 0x560ad17c31c8>
    ## <environment: namespace:simple>

### Summary

The summary call provides information about the input you provided. It
gives an overview about snapshot and additional variables as well the
function that was implemented.

``` r
summary(lCheckEnrl())
```

    ## Specified accrual function: 
    ## [1] "if (lPltfTrial$isa[[lAddArgs$current_id]]$nMaxNIntr <= nrow(do.call(rbind.data.frame, lPltfTrial$isa[[lAddArgs$current_id]]$lPats))) {\n    if (lPltfTrial$isa[[lAddArgs$current_id]]$bEnrl) {\n        print(paste0(\"ISA \", lAddArgs$current_id, \" has stopped enrollment at time \", lPltfTrial$lSnap$dCurrTime))\n        lPltfTrial$lSnap$dExitIntr <- lPltfTrial$lSnap$dExitIntr + 1\n        lPltfTrial$isa[[lAddArgs$current_id]]$bEnrl <- FALSE\n        lPltfTrial$isa[[lAddArgs$current_id]]$nEndEnrlTime <- lPltfTrial$lSnap$dCurrTime\n    }\n} else {\n    if (!is.na(lPltfTrial$isa[[lAddArgs$current_id]]$cEndReason) | !is.na(lPltfTrial$isa[[lAddArgs$current_id]]$nEndTime)) {\n        if (lPltfTrial$isa[[lAddArgs$current_id]]$bEnrl) {\n            print(paste0(\"ISA \", lAddArgs$current_id, \" has stopped enrollment at time \", lPltfTrial$lSnap$dCurrTime))\n            lPltfTrial$lSnap$dExitIntr <- lPltfTrial$lSnap$dExitIntr + 1\n            lPltfTrial$isa[[lAddArgs$current_id]]$bEnrl <- FALSE\n            lPltfTrial$isa[[lAddArgs$current_id]]$nEndEnrlTime <- lPltfTrial$lSnap$dCurrTime\n            if (is.na(lPltfTrial$isa[[lAddArgs$current_id]]$cEndReason)) {\n                lPltfTrial$isa[[lAddArgs$current_id]]$cEndReason <- \"Other\"\n            }\n        }\n    }\n}"
    ## 
    ##  Specified arguments: 
    ## NULL

## Examples

1.  **End enrollment if maximum sample size has been reached**

``` r
x <- lCheckEnrl()
# this is exactly what the default function does
```

------------------------------------------------------------------------

2.  **End enrollment if a certain time (nTime) has passed**

In this case we have to adapt the “if” condition in the default
function:

CAVE: Often the platform will run until all ISAs have a final decision,
but the analysis triggers might require the ISA to have reached a
certain sample size. Make sure that cross compatibility is given and the
platform does not run infinitely.

``` r
x <- 
  new_lCheckEnrl(
    fnCheckEnrl = function(lPltfTrial, lAddArgs) {
      
      # It is expected that in lAddArgs we will find the current ID under "current_id"
      
      # Change the if condition from default function
      if (
        lPltfTrial$lSnap$dCurrTime <= lAddArgs$nTime
        ) {
        
        if (lPltfTrial$isa[[lAddArgs$current_id]]$bEnrl) {
          # If this is the first time unit in which the enrollment is not active
          print(
            paste0(
              "ISA ",
              lAddArgs$current_id,
              " has stopped enrollment at time ",
              lPltfTrial$lSnap$dCurrTime
            )
          )
          
          lPltfTrial$lSnap$dExitIntr <- lPltfTrial$lSnap$dExitIntr + 1
          lPltfTrial$isa[[lAddArgs$current_id]]$bEnrl <- FALSE
          lPltfTrial$isa[[lAddArgs$current_id]]$nEndEnrlTime <- lPltfTrial$lSnap$dCurrTime
          
        }
        
      }
      
      return(lPltfTrial)
      
    },
    lAddArgs   = list(nTime = 100)
  )
```

### Remarks

The snapshot variables saved in the list *lPltfTrial* have a fixed name
which should not be changed as it is implemented in many different
modules. As mentioned above the vignette of the module *lSnap* will
contain an overview of all the snapshot variables used in any module.
