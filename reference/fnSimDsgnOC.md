# Calculates the operating characteristics of a platfom design

Calculates the operating characteristics of a platfom design

## Usage

``` r
fnSimDsgnOC(
  lPltfDsgn,
  nIter,
  nCores = 1,
  bSaveCsv = FALSE,
  cPathCsv = getwd(),
  cNameCsv = "Test",
  bRetList = FALSE,
  bRetInd = FALSE,
  export = NULL,
  nStartSeed = NULL,
  ...
)
```

## Arguments

- lPltfDsgn:

  Platform Design List

- nIter:

  Number of iterations to run

- nCores:

  Number of cores to run on

- bSaveCsv:

  Indicator whether simulation results should be saved in a CSV file

- cPathCsv:

  Path to which simulation results will be saved; if NULL, then save to
  current path

- cNameCsv:

  Filename for CSV File to be saved as

- bRetList:

  Indicator whether function should save list of results

- bRetInd:

  Indicator whether individual trial results should be saved as well

- export:

  Further Arguments to be exported to slaves

- nStartSeed:

  Only used when nCores == 1, used for debugging

- ...:

  All other design parameters

## Value

List of operating characteristics

## Examples

``` r
ocs <- fnSimDsgnOC(lPltfDsgn = fnSimpleDesign(), nIter = 3)
#> Warning: Chi-squared approximation may be incorrect
#> Warning: Chi-squared approximation may be incorrect
#> Warning: Chi-squared approximation may be incorrect
#> Warning: Chi-squared approximation may be incorrect
#> Warning: Chi-squared approximation may be incorrect
#> Warning: Chi-squared approximation may be incorrect
#> Warning: Chi-squared approximation may be incorrect
#> Warning: Chi-squared approximation may be incorrect
#> Warning: Chi-squared approximation may be incorrect
#> Warning: Chi-squared approximation may be incorrect
#> Warning: Chi-squared approximation may be incorrect
```
