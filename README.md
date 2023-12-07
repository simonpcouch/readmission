
# readmission

readmission is an R data package containing a data frame, `readmission`,
giving hospital readmission data for patients with diabetes. Clinical
care data is from 130 U.S. hospitals in years 1999-2008. Each row
describes a patient “encounter” with variables on demographics,
medications, patient history, diagnostics, payment, and readmission.

## Installation

You can install the most recent release of readmission on CRAN with:

``` r
install.packages("readmission")
```

Install the development version of readmission from
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
#>    readmitted race   sex   age   admission_source blood_glucose insurer duration
#>    <fct>      <fct>  <fct> <fct> <fct>            <fct>         <fct>      <dbl>
#>  1 Yes        Afric… Male  [60-… Referral         <NA>          <NA>           7
#>  2 No         Cauca… Fema… [50-… Emergency        Normal        Private        4
#>  3 Yes        Cauca… Fema… [70-… Referral         <NA>          Medica…        5
#>  4 No         Cauca… Fema… [80-… Referral         <NA>          Private        5
#>  5 No         Cauca… Fema… [70-… Referral         <NA>          <NA>           4
#>  6 No         Cauca… Male  [50-… Emergency        Very High     <NA>           2
#>  7 Yes        Afric… Fema… [70-… Referral         <NA>          Private        3
#>  8 No         Cauca… Fema… [20-… Emergency        <NA>          <NA>           1
#>  9 No         Cauca… Male  [60-… Other            <NA>          <NA>          12
#> 10 No         Cauca… Fema… [80-… Referral         <NA>          Medica…        1
#> # ℹ 71,505 more rows
#> # ℹ 4 more variables: n_previous_visits <dbl>, n_diagnoses <dbl>,
#> #   n_procedures <dbl>, n_medications <dbl>
```
