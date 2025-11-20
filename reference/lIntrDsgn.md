# ISA Design List

Different ISA Designs to draw from of class lIntrDsgnList

## Usage

``` r
new_lIntrDsgn(
  lInitIntr = list(),
  lAllocArm = list(),
  lPatOutcome = list(),
  lCheckAnlsMstn = list(),
  lAnls = list(),
  lSynthRes = list(),
  lCheckEnrl = list(),
  ...
)

validate_lIntrDsgn(x)

lIntrDsgn(
  lInitIntr,
  lAllocArm,
  lPatOutcome,
  lCheckAnlsMstn,
  lAnls,
  lSynthRes,
  lCheckEnrl,
  ...
)
```

## Arguments

- lInitIntr:

  Module for intervention initialization

- lAllocArm:

  Module for within-ISA allocation

- lPatOutcome:

  Module for patient outcomes

- lCheckAnlsMstn:

  Module for checking analysis milestones

- lAnls:

  Module for analysis

- lSynthRes:

  Module for synthesizing results

- lCheckEnrl:

  Module for checking enrollment

- ...:

  Additional ISA-level modules

- x:

  An object of class lIntrDsgn

## Examples

``` r
if (FALSE) { # \dontrun{
# Internal module used by platform trial simulation
x <- lIntrDsgn()
} # }
```
