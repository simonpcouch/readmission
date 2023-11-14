
# readmission

readmission is an R data package containing a data frame, `readmission`,
giving hospital readmission data for patients with diabetes. Clinical
care data is from 130 U.S. hospitals in years 1999-2008. Each row
describes a patient “encounter” with variables on demographics,
medications, patient history, diagnostics, payment, and readmission.

## Installation

You can install the development version of readmission from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("simonpcouch/readmission")
```

## Example

``` r
library(tibble)
library(readmission)

readmission
#> # A tibble: 71,515 × 12
#>    readmitted race           sex   age   admission_source a1c   insurer duration
#>    <fct>      <fct>          <fct> <fct> <fct>            <fct> <fct>      <dbl>
#>  1 Yes        African Ameri… Male  [60-… Referral         <NA>  <NA>           7
#>  2 No         Caucasian      Fema… [50-… Emergency        Norm… Private        4
#>  3 Yes        Caucasian      Fema… [70-… Referral         <NA>  Medica…        5
#>  4 No         Caucasian      Fema… [80-… Referral         <NA>  Private        5
#>  5 No         Caucasian      Fema… [70-… Referral         <NA>  <NA>           4
#>  6 No         Caucasian      Male  [50-… Emergency        Very… <NA>           2
#>  7 Yes        African Ameri… Fema… [70-… Referral         <NA>  Private        3
#>  8 No         Caucasian      Fema… [20-… Emergency        <NA>  <NA>           1
#>  9 No         Caucasian      Male  [60-… Other            <NA>  <NA>          12
#> 10 No         Caucasian      Fema… [80-… Referral         <NA>  Medica…        1
#> # ℹ 71,505 more rows
#> # ℹ 4 more variables: n_previous_visits <dbl>, n_diagnoses <dbl>,
#> #   n_procedures <dbl>, n_medications <dbl>
```
