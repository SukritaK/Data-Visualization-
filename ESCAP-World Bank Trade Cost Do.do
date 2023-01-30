use "C:\Users\dell\Desktop\20220509-ESCAP-WB-tradecosts-dataset.dta" 
(Copyright (c) United Nations 2022)

encode reportername, gen (reporter_country)

encode partnername, gen (partner_name)

keep if year==2020

encode sectorname, gen (sector_name)

drop if geometric_avg_tariff==.

use draft1, clear
drop if tij==.
drop if nontariff_tij==.

save draft1, replace 

save west_cost

keep if (reporter_country== 1| reporter_country==15|reporter_country==183|reporter_country==84|reporter_country==86|reporter_country==22|reporter_country==112|reporter_country==141|reporter_country==167) & (partner_name== 1|partner_name==15|partner_name==183|partner_name==84|partner_name==86|partner_name==22|partner_name==112|partner_name==141|partner_name==167) &  (sector_name==3)

save draft_sswa

drop if tij==. 

use draft1, clear
keep if sector_name==3
drop if tij==. 


keep if (reporter_country== 1| reporter_country==15|reporter_country==183|reporter_country==84|reporter_country==86|reporter_country==22|reporter_country==112|reporter_country==141|reporter_country==167) & (partner_name== 189|partner_name== 71|partner_name== 66|partner_name==10)

save drafteuro

//ASEAN

keep if (reporter_country== 15| reporter_country==19|reporter_country==54|reporter_country==75|reporter_country==86|reporter_country==96|reporter_country==106|reporter_country==116|reporter_country==125) & (partner_name== 19|partner_name==15|partner_name==54|partner_name==75|partner_name==86|partner_name==96|partner_name==106|partner_name==116|partner_name==125)

save asean_intra

use draft_sswa, clear
replace partnername="Turkyie" if partnername=="Turkey"
replace reportername="Turkyie" if reportername=="Turkey"


