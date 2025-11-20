# Creates a simple platform trial design of class lPltfDsgn

Creates a simple platform trial design of class lPltfDsgn

## Usage

``` r
fnSimpleDesign(
  endpoint = "binary",
  contr_eff = 0.1,
  trt_effs = rep(0.2, max_intr),
  sd = NULL,
  sample_size = 100,
  intr_at_start = 3,
  sig_level = 0.05,
  data_sharing = "all",
  max_intr = 10,
  obs_lag = 10,
  recr_speed = 5
)
```

## Arguments

- endpoint:

  Type of endpoint; either "binary" or "continuous"

- contr_eff:

  Control treatment effect. Either response rate if endpoint is binary
  or mean if endpoint is continuous.

- trt_effs:

  Vector of length max_intr giving the treatment effects. Either
  response rates if endpoint is binary or means if endpoint is
  continuous.

- sd:

  If endpoint is continuous, a vector of length two giving the standard
  deviation in the control groups (first entry) and the experimental
  groups (second entry).

- sample_size:

  Sample size per arm in the trial

- intr_at_start:

  Number of ISAs at platform initiation

- sig_level:

  Significance level to be used in statistical tests

- data_sharing:

  Type of control data sharing to be used - either "All" (pool all data)
  or "Intr" (use only within ISA data) or "Conc" (use all concurrently
  collected data)

- max_intr:

  Maximum number of ISAs to be included in platform trial

- obs_lag:

  How long does it take for outcomes to be observed?

- recr_speed:

  How many patients per time unit are enrolled?

## Value

Object of class lPltfDsgn to be supplied to fnRunSingleTrialSim or
modified later

## Examples

``` r
lPltfDsgn <- fnSimpleDesign(
    endpoint       = "binary",
    contr_eff      = 0.1,
    trt_effs       = rep(0.2, 5),
    sample_size    = 100,
    intr_at_start  = 3,
    sig_level      = 0.05,
    data_sharing   = "all",
    max_intr       = 5,
    obs_lag        = 10,
    recr_speed     = 5
)

out <- fnRunSingleTrialSim(lPltfDsgn)
out <- fnRunSingleTrialSim(fnSimpleDesign())
#> Warning: Chi-squared approximation may be incorrect
#> Warning: Chi-squared approximation may be incorrect

lPltfDsgn2 <- fnSimpleDesign(
    endpoint       = "continuous",
    contr_eff      = 1,
    trt_effs       = c(1, 1.5, 2),
    sd             = c(2, 2.2),
    sample_size    = 100,
    intr_at_start  = 2,
    sig_level      = 0.05,
    data_sharing   = "all",
    max_intr       = 3,
    obs_lag        = 10,
    recr_speed     = 5
)

out <- fnRunSingleTrialSim(lPltfDsgn2)
```
