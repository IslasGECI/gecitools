#' Convert Spanish-formatted dates to R Date objects
#'
#' Replaces Spanish month abbreviations with English ones and parses them into Date objects.
#'
#' @param data_with_spanish_dates A tibble or data frame with a `Fecha` column.
#' @return A tibble or data frame with the `Fecha` column parsed as Date.
#' @export
#'
#' @examples
#' library(tibble)
#' raw_data <- tibble(Fecha = c("15/Ene/2015", "03/Feb/2016"))
#' convert_spanish_dates(raw_data)
convert_spanish_dates <- function(data_with_spanish_dates) {
  # Define a named vector for month translations
  month_translations <- c(
    "Ene" = "Jan",
    "Feb" = "Feb",
    "Mar" = "Mar",
    "Abr" = "Apr",
    "May" = "May",
    "Jun" = "Jun",
    "Jul" = "Jul",
    "Ago" = "Aug",
    "Sep" = "Sep",
    "Oct" = "Oct",
    "Nov" = "Nov",
    "Dic" = "Dec"
  )

  data_with_spanish_dates %>%
    dplyr::mutate(
      Fecha = stringr::str_replace_all(Fecha, month_translations),
      Fecha = lubridate::dmy(Fecha)
)
}
