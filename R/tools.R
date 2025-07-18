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
