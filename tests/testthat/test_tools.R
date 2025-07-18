library(tibble)

describe("convert_spanish_dates()", {
  it("translates Spanish month names and parses them into Date objects", {
    raw_data <- tibble(Fecha = c("15/Ene/2015", "03/Feb/2016"))
    expected_parsed_dates <- tibble(Fecha = lubridate::dmy(c("15/Jan/2015", "03/Feb/2016")))
    obtained_parsed_dates <- convert_spanish_dates(raw_data)
    expect_equal(obtained_parsed_dates, expected_parsed_dates)
  })
})

