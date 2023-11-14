#' Hospital Readmission Data for Patients with Diabetes
#'
#' Clinical care data from 130 U.S. hospitals in years 1999-2008.
#' Each row describes an "encounter" with a patient with diabetes, including
#' variables on demographics, medications, patient history, diagnostics,
#' payment, and readmission.
#'
#' @format
#' A data frame with 71,515 rows and 12 columns:
#' \describe{
#'   \item{readmitted}{Whether the patient was readmitted within the 30 days
#'   following discharge. A factor with levels `"Yes"` and `"No"`.}
#'   \item{race}{Reported race of the patient. Source data does not document
#'   data collection strategy. A factor with levels `"African American"`,
#'   `"Asian"`, `"Caucasian"`, `"Hispanic"`, `"Other"`, and `"Unknown"`.}
#'   \item{sex}{Reported sex of the patient. Source data does not document
#'   data collection strategy. A factor with levels `"Female"` and `"Male"`.}
#'   \item{age}{Age range for the patient, binned in 10-year intervals. A factor
#'   with levels `"[0-10)"`, `"[10-20)"`, `"[20-30)"`, `"[30-40)"`, `"[40-50)"`,
#'   `"[50-60)"`, `"[60-70)"`, `"[70-80)"`, `"[80-90)"`, and `"[90-100)"`.}
#'   \item{admission_source}{Whether the patient was referred from a physician,
#'   admitted via the ER, or arrived via some other source. A factor with
#'   levels `"Emergency"`, `"Other"`, and `"Referral"`.}
#'   \item{a1c}{Results from a blood test quantifying the patient's average
#'   blood sugar over the past 2-3 months. Higher A1C levels are linked to
#'   diabetes complications. A factor with levels `"Normal"`, `"High"`, and
#'   `"Very High"`, and many missing values.}
#'   \item{insurer}{The health insurance provider (or lack thereof,
#'   via `"Self-Pay"`) for the patient. A factor with levels
#'   `"Medicaid"`, `"Medicare"`, `"Private"`, and `"Self-Pay"`, and many missing
#'   values.}
#'   \item{duration}{Number of days in the hospital between admission and
#'   discharge.}
#'   \item{n_previous_visits}{Number of emergency, inpatient, and outpatient
#'   visits in the year preceding the encounter.}
#'   \item{n_diagnoses}{"Number of diagnoses entered to the system" during
#'   the encounter.}
#'   \item{n_procedures}{"Number of procedures (other than lab tests)
#'   performed" during the encounter.}
#'   \item{n_medications}{"Number of distinct generic names administered"
#'   during the encounter.}
#' }
#'
#' @source
#' _Original source data from the following paper (CC BY 3.0):_
#'
#' Strack, B., DeShazo, J. P., Gennings, C., Olmo, J. L., Ventura, S., Cios,
#' K. J., & Clore, J. N. 2014. Impact of HbA1c measurement on hospital
#' readmission rates: analysis of 70,000 clinical database patient records.
#' BioMed research international, 781670. <doi:10.1155/2014/781670>.
#'
#' _Shared freely through the UCI Machine Learning Repository (CC BY 4.0):_
#'
#' Clore, J., Cios, K., DeShazo, J. P., and Strack, B. 2014. Diabetes 130-US
#' hospitals for years 1999-2008. UCI Machine Learning Repository.
#' <doi:10.24432/C5230J>.
#'
#' _Downloaded from resources shared by the Fairlearn team (MIT):_
#'
#' Weerts, H., Dudík M., Edgar, R., Jalali, A., Lutz, R., & Madaio, M. 2023.
#' Fairlearn: Assessing and Improving Fairness of AI Systems. Journal of
#' Machine Learning Research, 24(257):1−8.
#'
#' @examples
#'
#' str(readmission)
#'
#' head(readmission)
#'
"readmission"
