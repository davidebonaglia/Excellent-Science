clear
*Davide's directory
cd "/Users/davidebonaglia/Dropbox/Projects UNU/Excellent Science/data_cleaned/"
import excel "database_prod_model_29122022.xlsx", firstrow

*Fabiana's directory
cd "C:\Users\Fabiana Visentin\Dropbox\Excellent Science\data_cleaned\"
import excel "database_prod_model_29122022.xlsx", sheet("Sheet1") firstrow

count

cd "/Users/davidebonaglia/Dropbox/Projects UNU/Excellent Science/Writing/"

gen log_publ = log(n_publications + 1)
gen log_tot_cost_proj = log(total_cost_proj)
gen log_citations = log(times_cited + 1)
gen share_of_countries_2 = share_of_countries*100

gen top_1_percentage = top_1*100

gen n_organizations_square = n_organizations * n_organizations
gen n_participants_square = n_participants * n_participants

*gen knowledge_diversity_2quared = knowledge_diversity_2 * knowledge_diversity_2 
gen knowledge_diversity_3quared = knowledge_diversity_3 * knowledge_diversity_3 

**************************************************
*label variables

lab var project_id "project ID"
lab var n_publications "number of publications"
lab var starting_date "project starting date"
lab var ending_date "project ending date"
lab var period_in_days "duration of the project in days"
lab var period_in_months "duration of the project in months"
lab var times_cited "citations received by all the publications of the project"
lab var top_1 "share of publications in the top 1% per project"
lab var at_least_one_publ_open_access "at least one publication has open access"

*lab var knowledge_diversity_2 "number of research areas"
*lab var knowledge_diversity_2quared "number of research areas squared"
lab var knowledge_diversity_3 "number of research areas"
lab var knowledge_diversity_3quared "number of research areas squared"

lab var log_publ "log(Publications)"
lab var log_citations "log(Citations)"

lab var total_cost_proj "total cost of the project"
lab var log_tot_cost_proj "log cost of the project"
lab var n_agencies "number of agencies"
lab var n_organizations "number of organizations" 
lab var n_participants "number of participants"

lab var n_organizations_square "quadratic term num of organizations" 
lab var n_participants_square "quadratic term num of participants"


lab var n_countries "number of countries"
lab var share_of_countries_2 "share of countries" 
lab var share_of_countries "share of countries" 
lab var at_least_one_EU27 "at least one country is EU27"
lab var at_least_one_EU_Widening "at least one country EU widening"
lab var at_least_one_not_EU_Widening "at least one country is not EU widening"
lab var at_least_one_ALL_Widening "at least one country is widening"

lab var one_country_is_US "at least one country is the US"
lab var one_country_is_UK "at least one country is the UK"
lab var one_country_is_SouthKorea "at least one country is South Korea"
lab var one_country_is_Japan "at least one country is Japan"
lab var one_country_is_China "at least one country is China"

lab var at_least_one_fund_agency_Univers "at least one funding agency is University"
lab var at_least_one_fund_agency_Ministr "at least one funding agency is Ministry"
lab var at_least_one_fund_agency_ResInst "at least one funding agency is Research Institute"
lab var at_least_one_fund_agency_Others "at least one funding agency is Others"

lab var cd_org_type_HES "organization type HES"
lab var cd_org_type_OTH "organization type OTH"
lab var cd_org_type_PRC "organization type PRC"
lab var cd_org_type_PUB "organization type PUB"
lab var cd_org_type_REC "organization type REC"

lab var progr_proj_id_ERC "ERC"
lab var progr_proj_id_FET "FET"
lab var progr_proj_id_FTI "FTI"
lab var progr_proj_id_ICT "ICT"
lab var progr_proj_id_INFRA "INFRA"
lab var progr_proj_id_LEITs "LEITs"
lab var progr_proj_id_MSCA "MSCA"
lab var progr_proj_id_SC1 "SC1"
lab var progr_proj_id_SC2 "SC2"
lab var progr_proj_id_SC3 "SC3"
lab var progr_proj_id_SC4 "SC4"
lab var progr_proj_id_SC5 "SC5"
lab var progr_proj_id_SC6 "SC6"
lab var progr_proj_id_SC7 "SC7"
lab var progr_proj_id_SEWP "SEWP"
lab var SWAFS "SWAFS"
lab var Euratom "Euratom"
lab var SWAFS_others "other types of SWAFS"

lab var action_type_proj_id_ERCADG "ERC-ADG"
lab var action_type_proj_id_ERCCOG "ERC-COG"
lab var action_type_proj_id_ERCPOC "ERC-POC"
lab var action_type_proj_id_ERCPOCLS "ERC-POC-LS"
lab var action_type_proj_id_ERCSTG "ERC-STG"
lab var action_type_proj_id_ERCSyG "ERC-SyG"
lab var action_type_proj_id_MSCAIFEF "MSCA-IF-EF"
lab var action_type_proj_id_MSCAIFGF "MSCA-IF-GF"

**************************************************

* variable with the type of project
gen type_pj=""
replace type_pj="ERC" if progr_proj_id_ERC==1
replace type_pj="FET" if progr_proj_id_FET==1
replace type_pj="FTI" if progr_proj_id_FTI==1
replace type_pj="ICT" if progr_proj_id_ICT==1
replace type_pj="INFRA" if progr_proj_id_INFRA==1
replace type_pj="LEITs" if progr_proj_id_LEITs==1
replace type_pj="MSCA" if progr_proj_id_MSCA==1
replace type_pj="SC1" if progr_proj_id_SC1==1
replace type_pj="SC2" if progr_proj_id_SC2==1
replace type_pj="SC3" if progr_proj_id_SC3==1
replace type_pj="SC4" if progr_proj_id_SC4==1
replace type_pj="SC5" if progr_proj_id_SC5==1
replace type_pj="SC6" if progr_proj_id_SC6==1
replace type_pj="SC7" if progr_proj_id_SC7==1
replace type_pj="SEWP" if progr_proj_id_SEWP==1
replace type_pj="SWAFS" if SWAFS==1
replace type_pj="Euratom" if Euratom==1
replace type_pj="SWAFS_others" if SWAFS_others==1


**************************************************

global project_character = "n_organizations n_participants"

global citations = "field_expected_citations field_normalized_cit_impact"

global countries_dummies = "one_country_is_US one_country_is_UK one_country_is_China at_least_one_EU27 at_least_one_EU_Widening at_least_one_not_EU_Widening at_least_one_ALL_Widening"

global agencies = "at_least_one_fund_agency_Ministr at_least_one_fund_agency_ResInst at_least_one_fund_agency_Others"

global org_type = "cd_org_type_HES cd_org_type_OTH cd_org_type_PRC cd_org_type_PUB cd_org_type_REC"

global research_areas = "research_area_Biology research_area_GeoScience research_area_Physics research_area_Chemistry research_area_AstronomyAstrophy research_area_Meteorology research_area_Neurosciences research_area_NuclearScience research_area_EnvironmentalScien research_area_MaterialScience research_area_Mathematics research_area_Economics research_area_Engineering research_area_ComputerScience research_area_Robotics research_area_Medicine research_area_Pharmacy research_area_Psychology research_area_SocialScience research_area_Ecology research_area_Law research_area_Statistics"

global projects = "progr_proj_id_ERC progr_proj_id_FET progr_proj_id_FTI progr_proj_id_ICT progr_proj_id_INFRA progr_proj_id_LEITs progr_proj_id_MSCA progr_proj_id_SC1 progr_proj_id_SC2 progr_proj_id_SC3 progr_proj_id_SC4 progr_proj_id_SC5 progr_proj_id_SC6 progr_proj_id_SC7 progr_proj_id_SEWP SWAFS Euratom SWAFS_others"


global sub_projects = "action_type_proj_id_ERCADG action_type_proj_id_ERCCOG action_type_proj_id_ERCPOC action_type_proj_id_ERCPOCLS action_type_proj_id_ERCSTG action_type_proj_id_ERCSyG action_type_proj_id_MSCAIFEF action_type_proj_id_MSCAIFGF"

***********************************************

asdoc sum n_publications knowledge_diversity_3 times_cited total_cost_proj period_in_months share_of_countries_2 $countries_dummies at_least_one_publ_open_access at_least_one_fund_agency_Univers at_least_one_fund_agency_Ministr at_least_one_fund_agency_ResInst at_least_one_fund_agency_Others progr_proj_id_MSCA progr_proj_id_ERC $sub_projects $research_areas if type_pj=="MSCA" | type_pj=="ERC" , label save(descriptive statistics ERC & MSCA.doc) replace

asdoc sum n_publications knowledge_diversity_3 times_cited total_cost_proj period_in_months one_country_is_US one_country_is_UK one_country_is_China at_least_one_not_EU_Widening at_least_one_publ_open_access at_least_one_fund_agency_Univers at_least_one_fund_agency_Ministr at_least_one_fund_agency_ResInst at_least_one_fund_agency_Others progr_proj_id_FET progr_proj_id_FTI progr_proj_id_ICT progr_proj_id_INFRA progr_proj_id_LEITs progr_proj_id_SC1 progr_proj_id_SC2 progr_proj_id_SC3 progr_proj_id_SC4 progr_proj_id_SC5 progr_proj_id_SC6 progr_proj_id_SC7 progr_proj_id_SEWP SWAFS $research_areas if type_pj!="MSCA" & type_pj!="ERC" , label save(descriptive statistics all others.doc) replace

***********************************************

reg log_publ knowledge_diversity_3 knowledge_diversity_3quared n_organizations log_tot_cost_proj period_in_months share_of_countries_2 $countries_dummies at_least_one_publ_open_access at_least_one_fund_agency_Univers at_least_one_fund_agency_Ministr at_least_one_fund_agency_ResInst at_least_one_fund_agency_Others progr_proj_id_MSCA progr_proj_id_ERC $sub_projects $research_areas if type_pj=="MSCA" | type_pj=="ERC", vce(robust)
estimates store d1

reg log_citations knowledge_diversity_3 knowledge_diversity_3quared n_organizations log_tot_cost_proj period_in_months share_of_countries_2 $countries_dummies at_least_one_publ_open_access at_least_one_fund_agency_Univers at_least_one_fund_agency_Ministr at_least_one_fund_agency_ResInst at_least_one_fund_agency_Others progr_proj_id_MSCA progr_proj_id_ERC $sub_projects $research_areas if type_pj=="MSCA" | type_pj=="ERC", vce(robust)
estimates store e1

reg top_1 knowledge_diversity_3 knowledge_diversity_3quared n_organizations log_tot_cost_proj period_in_months share_of_countries_2 $countries_dummies at_least_one_publ_open_access at_least_one_fund_agency_Univers at_least_one_fund_agency_Ministr at_least_one_fund_agency_ResInst at_least_one_fund_agency_Others progr_proj_id_MSCA progr_proj_id_ERC $sub_projects $research_areas if type_pj=="MSCA" | type_pj=="ERC", vce(robust)
estimates store f1


outreg2 [d1 e1 f1] using prod_model_MSCA_ERC_new,  excel lab auto(2)  replace title("Productivity Model - ERC & MSCA")  ///
   drop(at_least_one_fund_agency_Others $org_type $research_areas  o.*) ///
   sortvar(knowledge_diversity_3 knowledge_diversity_3quared n_organizations log_tot_cost_proj period_in_months share_of_countries_2 $countries_dummies at_least_one_publ_open_access at_least_one_fund_agency_Univers at_least_one_fund_agency_Ministr at_least_one_fund_agency_ResInst at_least_one_fund_agency_Others progr_proj_id_MSCA progr_proj_id_ERC ) ///
   addtext("research area dummies", Yes)

***********************************************

reg log_publ knowledge_diversity_3 knowledge_diversity_3quared $project_character log_tot_cost_proj period_in_months one_country_is_US one_country_is_UK one_country_is_China at_least_one_not_EU_Widening at_least_one_publ_open_access at_least_one_fund_agency_Univers at_least_one_fund_agency_Ministr at_least_one_fund_agency_ResInst at_least_one_fund_agency_Others progr_proj_id_FET progr_proj_id_FTI progr_proj_id_ICT progr_proj_id_INFRA progr_proj_id_LEITs progr_proj_id_SC1 progr_proj_id_SC2 progr_proj_id_SC3 progr_proj_id_SC4 progr_proj_id_SC5 progr_proj_id_SC6 progr_proj_id_SC7 progr_proj_id_SEWP SWAFS $research_areas if type_pj!="MSCA" & type_pj!="ERC", vce(robust)
estimates store g1

reg log_citations knowledge_diversity_3 knowledge_diversity_3quared $project_character log_tot_cost_proj period_in_months one_country_is_US one_country_is_UK one_country_is_China at_least_one_not_EU_Widening at_least_one_publ_open_access at_least_one_fund_agency_Univers at_least_one_fund_agency_Ministr at_least_one_fund_agency_ResInst at_least_one_fund_agency_Others progr_proj_id_FET progr_proj_id_FTI progr_proj_id_ICT progr_proj_id_INFRA progr_proj_id_LEITs progr_proj_id_SC1 progr_proj_id_SC2 progr_proj_id_SC3 progr_proj_id_SC4 progr_proj_id_SC5 progr_proj_id_SC6 progr_proj_id_SC7 progr_proj_id_SEWP SWAFS  $research_areas if type_pj!="MSCA" & type_pj!="ERC", vce(robust)
estimates store h1

reg top_1 knowledge_diversity_3 knowledge_diversity_3quared $project_character log_tot_cost_proj period_in_months one_country_is_US one_country_is_UK one_country_is_China at_least_one_not_EU_Widening at_least_one_publ_open_access at_least_one_fund_agency_Univers at_least_one_fund_agency_Ministr at_least_one_fund_agency_ResInst at_least_one_fund_agency_Others progr_proj_id_FET progr_proj_id_FTI progr_proj_id_ICT progr_proj_id_INFRA progr_proj_id_LEITs progr_proj_id_SC1 progr_proj_id_SC2 progr_proj_id_SC3 progr_proj_id_SC4 progr_proj_id_SC5 progr_proj_id_SC6 progr_proj_id_SC7 progr_proj_id_SEWP SWAFS $research_areas if type_pj!="MSCA" & type_pj!="ERC", vce(robust)
estimates store i1


outreg2 [g1 h1 i1] using prod_model_all_the_others_new,  excel lab auto(2)  replace title("Productivity Model - All the other projects")  ///
   drop(at_least_one_fund_agency_Others $org_type $research_areas  o.*) ///
   sortvar(knowledge_diversity_3 knowledge_diversity_3quared $project_character log_tot_cost_proj period_in_months share_of_countries_2 one_country_is_US one_country_is_UK one_country_is_China at_least_one_not_EU_Widening at_least_one_publ_open_access at_least_one_fund_agency_Univers at_least_one_fund_agency_Ministr at_least_one_fund_agency_ResInst at_least_one_fund_agency_Others progr_proj_id_FET progr_proj_id_FTI progr_proj_id_ICT progr_proj_id_INFRA progr_proj_id_LEITs progr_proj_id_SC1 progr_proj_id_SC2 progr_proj_id_SC3 progr_proj_id_SC4 progr_proj_id_SC5 progr_proj_id_SC6 progr_proj_id_SC7 progr_proj_id_SEWP SWAFS ) ///
   addtext("research area dummies", Yes)

***********************************************

*** checks 18 January 2023

* other programmes are all multibeneficiary?

sum n_participants if type_pj!="MSCA" & type_pj!="ERC"

histogram n_participants if type_pj!="MSCA" & type_pj!="ERC"

count if n_participants==1 & type_pj!="MSCA" & type_pj!="ERC"
* 186

count if type_pj!="MSCA" & type_pj!="ERC"
* 4117

display 186/4117

* 0.45% are monobeneficiary

* duration in months

sum period_in_months if  type_pj=="MSCA" | type_pj=="ERC"
histogram period_in_months if  type_pj=="MSCA" | type_pj=="ERC"
tab period_in_months if  type_pj=="MSCA" | type_pj=="ERC"

br if period_in_months == 113

* 26% of the projects are longer than 5 years (we should check)

sum period_in_months if  type_pj!="MSCA" & type_pj!="ERC"
histogram period_in_months if type_pj!="MSCA" & type_pj!="ERC"
tab period_in_months if type_pj!="MSCA" & type_pj!="ERC"

* 8% of the projects are more than 5 years

* double check a couple of projects to understand what they mean for organizations. why ERC and Marie Curies have many organizations?
sum n_organizations if  type_pj=="MSCA" | type_pj=="ERC"
histogram n_organizations if  type_pj=="MSCA" | type_pj=="ERC"
tab n_organizations if  type_pj=="MSCA" | type_pj=="ERC"

* 71% one organizations

sum n_organizations if  type_pj!="MSCA" & type_pj!="ERC"
histogram n_organizations if  type_pj!="MSCA" & type_pj!="ERC"
tab n_organizations if  type_pj!="MSCA" & type_pj!="ERC"


* correlation pubs & research areas
corr n_publications knowledge_diversity_3 if  type_pj!="MSCA" & type_pj!="ERC"
corr n_publications knowledge_diversity_3 if type_pj=="MSCA" | type_pj=="ERC"
* the correlation is quite high for ERC and Marie Curies but we can not retrieve the research areas in other ways


histogram knowledge_diversity_3 if  type_pj!="MSCA" & type_pj!="ERC"
histogram knowledge_diversity_3 if type_pj=="MSCA" | type_pj=="ERC"

sum knowledge_diversity_3 if  type_pj=="MSCA" | type_pj=="ERC", detail
