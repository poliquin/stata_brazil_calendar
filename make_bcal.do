
clear all
set more off


use "out/dates.dta", clear

qui sum day, meanonly
loc min: display %tdCY-N-D = r(min)
loc max: display %tdCY-N-D = r(max)

drop if biz == 0

bcal create "out/brazil.stbcal", from(day) dateformat(ymd) range(`min' `max') ///
	purpose("Brazilian business days") replace
	



exit
