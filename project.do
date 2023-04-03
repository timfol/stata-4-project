clear all 

ssc install estout


use health.dta

describe

reg cost_t tm1_obesity_e~r

generate logcost = log(cost_t)

reg logcost tm1_obesity_e~r

reg gagne_sum_t tm1_obesity_e~r

graph bar, gagne_sum_t tm1_obesity_e~r

gen age = (tm1_dem_age_band_1824 * 20) + (tm1_dem_age_band_2534 * 30) + (tm1_dem_age_band_3544 * 40) + (tm1_dem_age_band_4554 * 50) + (tm1_dem_age_band_5564 * 60) + (tm1_dem_age_band_6574 * 70) + (tm1_dem_age_band_75 * 80)

drop if age > 80

reg gagne_sum_t tm1_obesity_elixhauser age
