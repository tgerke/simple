# List of Function Definitions

Different ISA Designs to draw from of class lIntrDsgnList

## Usage

``` r
new_lFnDef(
  fnInitialize = function(lPltfDsgn) {
 },
  fnAddNewIntr = function(lPltfDsgn, lPltfTrial) {
 },
  fnUpdateAlloc = function(lPltfDsgn, lPltfTrial) {
 },
  fnGenNewPatData = function(lPltfDsgn, lPltfTrial) {
 },
  fnIntrAction = function(lPltfDsgn, lPltfTrial) {
 },
  fnCheckTrialClose = function(lPltfDsgn, lPltfTrial) {
 },
  fnWrapup = function(lPltfDsgn, lPltfTrial) {
 }
)

validate_lFnDef(x)

lFnDef()
```

## Arguments

- fnInitialize:

  Function for initialization

- fnAddNewIntr:

  Function for adding new interventions

- fnUpdateAlloc:

  Function for updating allocation

- fnGenNewPatData:

  Function for generating new patient data

- fnIntrAction:

  Function for intervention actions

- fnCheckTrialClose:

  Function for checking if trial should close

- fnWrapup:

  Function for wrapping up the trial

- x:

  An object of class lFnDef

## Examples

``` r
if (FALSE) { # \dontrun{
# Internal module used by platform trial simulation
x <- lFnDef()
} # }
```
