library(tidyverse)

readmission_raw <- read_csv("https://github.com/fairlearn/talks/raw/8e768c372afb03099757c8ba2c43cfc95a681598/2021_scipy_tutorial/data/diabetic_data.csv")

# in case of repo deletion:
write.csv(readmission_raw, file = "data-raw/readmission_raw.csv")

set.seed(1)

readmission <-
  readmission_raw %>%
  filter(
    # 3 / 100k, and the label seems to be an artifact of data collection
    # rather than identification.
    gender != "Unknown/Invalid",
    # keep only the first visit and possible readmission for a patient
    !duplicated(patient_nbr)
  ) %>%
  transmute(
    # move outcome to first position
    readmitted = case_when(readmitted == "<30" ~ "Yes", .default = "No"),
    readmitted = factor(readmitted, levels = c("Yes", "No")),
    race = case_when(
      race == "AfricanAmerican" ~ "African American",
      race == "?" ~ "Unknown",
      .default = race
    ),
    # the entries in this column more accurately correspond to sex descriptors.
    # generally, though, more important to reason thoughtfully about how this
    # data was collected/coded (e.g. note no intersex patients).
    sex = gender,
    age = factor(age),
    admission_source = case_when(
      admission_source_id %in% c(1, 2, 3) ~ "Referral",
      admission_source_id == 7 ~ "Emergency",
      .default = "Other"
    ),
    blood_glucose = case_when(
      A1Cresult == "Norm" ~ "Normal",
      A1Cresult == ">7" ~ "High",
      A1Cresult == ">8" ~ "Very High",
      A1Cresult == "Norm" ~ NA_character_
    ),
    blood_glucose = factor(
      blood_glucose,
      levels = c("Normal", "High", "Very High")
    ),
    insurer = case_when(
      payer_code == "MC" ~ "Medicare",
      payer_code == "MD" ~ "Medicaid",
      payer_code == "SP" ~ "Self-Pay",
      payer_code == "?" ~ NA_character_,
      .default = "Private"
    ),
    duration = time_in_hospital,
    n_previous_visits = number_emergency + number_inpatient + number_outpatient,
    n_diagnoses = number_diagnoses,
    n_procedures = num_procedures,
    n_medications = num_medications
  ) %>%
  mutate(across(where(is.character), as.factor)) %>%
  slice_sample(prop = 1)

usethis::use_data(readmission, overwrite = TRUE)
