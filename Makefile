

out/brazil.stbcal : make_bcal.do out/dates.dta
	stata-mp -b do $<

out/dates.dta : list_dates.R
	R CMD BATCH --no-save --vanilla $<


.PHONY : clean
clean :
	-rm out/brazil.stbcal
	-rm out/dates.dta
	-rm *.log
	-rm *.Rout
