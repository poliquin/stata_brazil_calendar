Brazilian Business Calendar for Stata
=====================================

Build a Stata business calendar for Brazil covering 1980-01-01 through
2021-12-31 using business dates from [QuantLib][ql] (via [RQuantLib][rq]).


## Installation

There is no need to clone the project to install. The calendar can be
installed from within Stata using `net`:

```stata
net from https://raw.githubusercontent.com/poliquin/stata_brazil_calendar/main/out/
net describe brazil_business_cal
net install brazil_business_cal


// confirm installation and load calendar
bcal dir
bcal load brazil
```


[ql]: https://www.quantlib.org
[rq]: https://cran.r-project.org/web/packages/RQuantLib/index.html
