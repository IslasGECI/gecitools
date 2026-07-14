#' Filter data by island
#'
#' Subsets a tibble or data frame to rows matching a given island name.
#'
#' @param data A tibble or data frame with an `Isla` column.
#' @param island Character string specifying the island to filter by.
#' @return A tibble or data frame with only the rows where `Isla` matches `island`.
#' @export
#'
#' @examples
#' library(tibble)
#' sample_data <- tibble(Isla = c("Tenerife", "La Palma", "Tenerife"), value = 1:3)
#' filter_by_island(sample_data, "Tenerife")
filter_by_island <- function(data, island) {
  data |> dplyr::filter(Isla == island)
}
