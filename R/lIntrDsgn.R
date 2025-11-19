#' ISA Design List
#' 
#' Different ISA Designs to draw from of class lIntrDsgnList
#' 
#' @param lInitIntr        Module for intervention initialization
#' @param lAllocArm        Module for within-ISA allocation
#' @param lPatOutcome      Module for patient outcomes
#' @param lCheckAnlsMstn   Module for checking analysis milestones
#' @param lAnls            Module for analysis
#' @param lSynthRes        Module for synthesizing results
#' @param lCheckEnrl       Module for checking enrollment
#' 
#' @examples
#' \dontrun{
#' # Internal module used by platform trial simulation
#' x <- lIntrDsgn()
#' }
#' 
#' @name lIntrDsgn
#' 
#' @export
#' @rdname lIntrDsgn
# Constructor Function
new_lIntrDsgn <- function(
  lInitIntr       = list(),
  lAllocArm       = list(),
  lPatOutcome     = list(),
  lCheckAnlsMstn  = list(),
  lAnls           = list(),
  lSynthRes       = list(),
  lCheckEnrl      = list(),
  ...
) {
  structure(
    list(
      lInitIntr       = lInitIntr,
      lAllocArm       = lAllocArm,
      lPatOutcome     = lPatOutcome,
      lCheckAnlsMstn  = lCheckAnlsMstn,
      lAnls           = lAnls,
      lSynthRes       = lSynthRes,
      lCheckEnrl      = lCheckEnrl,
      ...
    ),
    class       = "lIntrDsgn"
  )
}
#' @param x An object of class lIntrDsgn
#' @param ... Additional ISA-level modules
#' @export
#' @rdname lIntrDsgn
# Validator Function
validate_lIntrDsgn <- function(x) {
  
}
#' @export
#' @rdname lIntrDsgn
# Helper Function creates ISAs with binary endpoints
lIntrDsgn <- function(
  lInitIntr       ,
  lAllocArm       ,
  lPatOutcome     ,
  lCheckAnlsMstn  ,
  lAnls           ,
  lSynthRes       ,
  lCheckEnrl      ,
  ...
) {

  new_lIntrDsgn(
    lInitIntr       ,
    lAllocArm       ,
    lPatOutcome     ,
    lCheckAnlsMstn  ,
    lAnls           ,
    lSynthRes       ,
    lCheckEnrl      ,
    ...
  )
  
}
