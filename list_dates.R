# Holidays in Brazil
# (use for making a Brazil business calendar for Stata)

library(haven)
library(lubridate)
library(tidyverse)
library(RQuantLib)

cal <- tibble(
    day = seq(date('1980-01-01'), date('2021-12-31'), by = 'days'),
    biz = isBusinessDay('Brazil', day)
)

write_dta(cal, 'out/dates.dta')
