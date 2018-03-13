#' A simulated syndromic surveillance dataset.
#'
#' A dataset in which completeness is lower across sources.
#'
#' @format A data frame with 150000 rows and 12 variables:
#' \describe{
#'   \item{Age}{age, in years}
#'   \item{Gender}{gender, male or female}
#'   \item{City}{city of patient residence in Idaho}
#'   \item{Zip}{ZIP code of patient residence in Idaho}
#'   \item{State}{state abbreviation of patient residence}
#'   \item{Chief.Complaint}{patient's reported chief complaint}
#'   \item{Diagnosis.Code}{patient's assigned ICD-9 diagnosis code}
#'   \item{Discharge.Disposition}{how the was patient discharged}
#'   \item{Initial.Temperature}{temperature of the patient in Fahrenheit}
#'   \item{Date}{date of patient visit}
#'   \item{Time}{time of patient visit}
#'   \item{Source}{health facility or organization that sent patient data}
#' }
#' @source Ian Painter's dqMonitoring R package
"syn_miss_fields"

#' Another simulated syndromic surveillance dataset.
#'
#' A dataset in which completeness is low for two sources across all fields.
#'
#' @format A data frame with 150000 rows and 12 variables:
#' \describe{
#'   \item{Age}{age, in years}
#'   \item{Gender}{gender, male or female}
#'   \item{City}{city of patient residence in Idaho}
#'   \item{Zip}{ZIP code of patient residence in Idaho}
#'   \item{State}{state abbreviation of patient residence}
#'   \item{Chief.Complaint}{patient's reported chief complaint}
#'   \item{Diagnosis.Code}{patient's assigned ICD-9 diagnosis code}
#'   \item{Discharge.Disposition}{how the was patient discharged}
#'   \item{Initial.Temperature}{temperature of the patient in Fahrenheit}
#'   \item{Date}{date of patient visit}
#'   \item{Time}{time of patient visit}
#'   \item{Source}{health facility or organization that sent patient data}
#' }
#' @source Ian Painter's dqMonitoring R package
"syn_miss_source"
