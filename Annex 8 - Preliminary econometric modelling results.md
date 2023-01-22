# Evaluation study on Excellent Science in the European Framework Programmes for Research and Innovation

In partnership with: UNU Merit and IDEA


## Annex 8: Preliminary econometric modelling results

### 8.1 Introduction
In support of the HORIZON 2020 post-evaluation, we perform two separate counterfactual analyses which consist of multiple econometric models each with a different focus and different level of sophistication. 

* The first analysis (see 8.2 below) consists of a productivity model that looks at HORIZON 2020 as a whole and its programmes in particular. This model should answer questions regarding the performance and impact of HORIZON 2020 project funding on academic output. More specifically we are interested in discovering whether project funding, project duration, team characteristics (size, organizational and national influences) and knowledge diversity of the research conducted, impact research productivity.

* •	The second analysis (see 8.3 below) is focused specifically on the ERC and MSCA-IF (sub-)programmes, and uses several estimation strategies to assess their impact on funded researchers. This analysis looks at the career impact of HORIZON 2020 funding using pre- and post-grant data and investigate whether ERC and MSCA fellowships are related to higher research productivity (post-grant). Although we are still building control groups (specifically the non-applicant group), we want to present the design as proposed and some initial results using the data collected so far.

* •	In Section 8.4 we present an overview of descriptive statistics of the results of the survey of successful and unsuccessful applicants to both the MSCA-IF and ERC programmes. We report only statistics for those questions that could possibly have a bearing on our second analysis on career impact of funding. We also estimate transition matrices describing the probability of progressing in the career for funded and non-funded applicants.


### 8.2 Do project funding, duration, consortium characteristics, and knowledge diversity, impact research productivity?
The findings of the productivity model inform us, in summary, of the following:
*	•	In terms of the research output in number of publications we find that knowledge diversity as measured by number of research areas positively affects productivity (e.g., interdisciplinary research increases productivity). However, we find an inverted U-shaped relationship which is interesting. This would point to the fact that it is good to diversify, but not too much.

*	•	There seems to be a positive relationship between the duration of the project, and the number of research output attributed to the project. For ERC and MSCA programmes, longer projects record both more publications and citations. A positive association between the duration of a project and outcomes is consistent with previous studies (Granja, Cintia Denise, and Fabiana Visentin. 2021 "International student mobility and academic performance: Does timing matter?." UNU-MERIT Working Papers 049). Funding agencies like the Swiss Science National Foundation are revising their project portfolio in order to minize short projects in favor of longer projects with the aim to reduce the application efforts. For the remaining programmes, duration is positively associated with a greater number of publications.

*	•	For ERC and MSCA programmes, there seems to be a negative relationship between the cost of the project and the number of research outputs attributed to the project; there is a decrease in the number of publications and citations once involving high costs. Considering the costs associated with the dimension of the project, we understand this effect as pointing to the increasing impact of coordination costs.

Due to the project’s heterogeneity, we analyse separately ERC and MSCA programmes. Tables 8.1 and 8.2 report the descriptive statistics for ERC and MSCA programme projects, and other projects, respectively.
 

**Table 8.1. Descriptive Statistics for the Productivity Model, ERC and MSCA programmes.**

| Variable                                                   |  Obs. |  Mean     |  Std. Dev. |  Min  |  Max     |
| ---------------------------------------------------------- | ----- | --------- | ---------- | ----- | -------- |
|  number of publications                                    | 8639  | 7.51      | 11.989     | 1     | 338      |
|  number of research areas                                  | 8639  | 5.575     | 5.533      | 1     | 165      |
|  citations received by all the publications of the project | 8639  | 143.281   | 441.242    | 0     | 21515    |
| number of organizations                                    | 8639  | 2.648     | 4.434      | 1     | 45       |
|  total cost of the project                                 | 8639  | 1367461.5 | 1305785.6  | 78643 | 13990459 |
|  duration of the project in month                          | 8639  | 47.44     | 19.209     | 11    | 90       |
|  share of countries                                        | 8639  | 1.034     | 1.199      | 0.57  | 14.29    |
|  at least one country is the US                            | 8639  | 0.064     | 0.244      | 0     | 1        |
|  at least one country is the UK                            | 8639  | 0.296     | 0.457      | 0     | 1        |
|  at least one country is China                             | 8639  | 0.085     | 0.279      | 0     | 1        |
|  at least one country is EU27                              | 8639  | 0.714     | 0.452      | 0     | 1        |
|  at least one country EU MS Countreis - Widening           | 8639  | 0.091     | 0.288      | 0     | 1        |
|  at least one country is Associated Country Widening       | 8639  | 0.041     | 0.197      | 0     | 1        |
|  at least one country is Widening                          | 8639  | 0.118     | 0.322      | 0     | 1        |
|  at least one publication has open access                  | 8639  | 0.816     | 0.387      | 0     | 1        |
|  at least one funding agency is a university               | 8639  | 0.465     | 0.499      | 0     | 1        |
|  at least one funding agency is a ministry                 | 8639  | 0.348     | 0.476      | 0     | 1        |
|  at least one funding agency is a research institute       | 8639  | 0.816     | 0.388      | 0     | 1        |
|  MSCA                                                      | 8639  | 0.477     | 0.499      | 0     | 1        |
|  ERC                                                       | 8639  | 0.523     | 0.499      | 0     | 1        |
|  ERC-ADG                                                   | 8639  | 0.12      | 0.325      | 0     | 1        |
|  ERC-COG                                                   | 8639  | 0.164     | 0.37       | 0     | 1        |
|  ERC-POC                                                   | 8639  | 0.028     | 0.165      | 0     | 1        |
|  ERC-POC-LS                                                | 8639  | 0.003     | 0.053      | 0     | 1        |
|  ERC-STG                                                   | 8639  | 0.205     | 0.403      | 0     | 1        |
|  ERC-SyG                                                   | 8639  | 0.004     | 0.063      | 0     | 1        |
|  MSCA-IF-EF                                                | 8639  | 0.304     | 0.46       | 0     | 1        |
|  MSCA-IF-GF                                                | 8639  | 0.046     | 0.209      | 0     | 1        |

EU MS Countreis - Widening: Those countries include EU-13, Luxemburg and Portugal. See: file:///C:/Users/notten/Downloads/widening_participation_in_h2020_report_469F1F83-B566-45B8-21179C59BB80A28A_54547.pdf, https://op.europa.eu/en/publication-detail/-/publication/d3eed905-7356-11ec-9136-01aa75ed71a1/language-en/format-PDF/source-248298288, https://bestprac.eu/fileadmin/mediapool-bestprac/documents/WS-Ghent/BESTPRAC_Spreading_Excellence_and_Widening_Participation_Adeline_Kroll_EC.pdf

The Associated Countries – Widening include Albania, Armenia, Bosnia and Herzegovina, Faroe Islands, Georgia, Iceland, Israel, Kosovo, Moldova, Montenegro, North Macedonia, Norway, Serbia, Tunisia, Turkey, Ukraine.



**Table 8.2. Descriptive Statistics for the Productivity Model, all other programmes.**

| Variable                                           |  Obs. |  Mean     |  Std. Dev. |  Min  |  Max     |
| -------------------------------------------------- | ----- | --------- | ---------- | ----- | -------- |
|  number of publications                            | 4117  | 11.5      | 91.526     | 1     | 5662     |
|  number of research areas                          | 4117  | 8.001     | 7.737      | 1     | 105      |
|  citations received by all the publications        | 4117  | 181.907   | 1213.331   | 0     | 57965    |
| number of organizations                            | 4117  | 14.525    | 13.091     | 1     | 208      |
| number of participants                             | 4117  | 172.765   | 630.067    | 1     | 23446    |
|  total cost of the project                         | 4117  | 7645521.7 | 28339042   | 68812 | 1.60E+09 |
|  duration of the project in month                  | 4117  | 42.56     | 11.589     | 9     | 113      |
|  at least one country is the US                    | 4117  | 0.051     | 0.22       | 0     | 1        |
|  at least one country is the UK                    | 4117  | 0.591     | 0.492      | 0     | 1        |
|  at least one country is China                     | 4117  | 0.268     | 0.443      | 0     | 1        |
|  at least one country is Associated Country        | 4117  | 0.238     | 0.426      | 0     | 1        |
|  at least one publication has open access          | 4117  | 0.807     | 0.394      | 0     | 1        |
|  at least one funding agency is a university       | 4117  | 0.34      | 0.474      | 0     | 1        |
|  at least one funding agency is a ministry         | 4117  | 0.372     | 0.483      | 0     | 1        |
|  at least one funding agency is research institute | 4117  | 0.543     | 0.498      | 0     | 1        |
|  FET                                               | 4117  | 0.074     | 0.262      | 0     | 1        |
|  FTI                                               | 4117  | 0.009     | 0.093      | 0     | 1        |
|  ICT                                               | 4117  | 0.194     | 0.396      | 0     | 1        |
|  INFRA                                             | 4117  | 0.043     | 0.203      | 0     | 1        |
|  LEITs                                             | 4117  | 0.304     | 0.46       | 0     | 1        |
|  SC1                                               | 4117  | 0.118     | 0.323      | 0     | 1        |
|  SC2                                               | 4117  | 0.063     | 0.243      | 0     | 1        |
|  SC3                                               | 4117  | 0.097     | 0.296      | 0     | 1        |
|  SC4                                               | 4117  | 0.085     | 0.279      | 0     | 1        |
|  SC5                                               | 4117  | 0.048     | 0.214      | 0     | 1        |
|  SC6                                               | 4117  | 0.033     | 0.179      | 0     | 1        |
|  SC7                                               | 4117  | 0.032     | 0.175      | 0     | 1        |
|  SEWP                                              | 4117  | 0.053     | 0.223      | 0     | 1        |
|  SWAFS                                             | 4117  | 0.013     | 0.112      | 0     | 1        |

From the descriptive statistics in Tables 8.1 and 8.2 we can already conclude that standard deviations for a number our variables vary significantly. At the same time this high variance promises the potential for interesting effects that can be observed. The econometric model we will run will look at productivity in terms of outputs (publications) but also extends to include some variables such as citation impact, interdisciplinarity and the effect of open access publishing. Cost, duration (in months) and participation (countries, organizations, participants) are the main independent variables, to which some variation is added by including large “research heavy” countries such as China and the US, and the HORIZON 2020 “Widening” countries, as possibly having an effect on performance (productivity and/or impact). The decision was made to further disassemble the latter in EU MS Countries - Widening and Associated Countries - Widening. Finally, next to the measurement of effects on EC Programmes and Challenges, we include a number of sub-programmes for ERC and MSCA in order to align with the econometric work we are doing specifically for these programmes and reported on under 8.3.

As mentioned above we try to align the productivity model, presented in Table 8.3, to the ERC & MSCA analysis in 12.2, and as such we use the same dependent variables. In particular, our estimated outcomes are the log-transformed versions of the number of publications and citations per project, along with the share of publications in the top 1%. The number of publications is the number of articles or proceedings papers per project, while the number of citations is the overall number of citations received by all the publications of a project. ERC and MSCA programmes present some differences from the other programmes, in particular in terms of number of participants, and countries involved. ERC and MSCA programmes are mainly mono-beneficiary programmes, and can involve only non-EU countries, while the remaining programmes involve consortia (multi-beneficiary programmes), and usually include at least one EU country. Due to these differences, we run a separate set of analyses for the two sub-sample of programmes. For each set of analyses, we estimate three OLS Models. Interestingly, for ERC and MSCA programmes (Table 8.3), knowledge diversity is positively associated with productivity. A positive coefficient indicates that the projects involving many research areas tend to be more productive and of higher visibility (measured by citations). However, we observe an inverted U-Shaped relationship, i.e., it is good to diversify but too much diversification is detrimental for the publications, and citations.

Furthermore, to assess the unbiased effects of our independent variable, we control for project characteristics (number of organizations and participants involved, logarithm of the cost of the project and duration of the project in months), country (distinguishing between the US, the UK , China, EU27, EU MS Coutries - Widening and Associated Countries - Widening), type of the programme (ERC, FET, FTI etc.), type of the ERC and MSCA sub-programme (ERC-ADG, MSCA-IF-EF etc.) and other project characteristics such as the type of funding agency involved in the project. We control for characteristics such as having at least one publication open access because such a control might have an impact in particular on the citation behaviour. Our models for ERC and MSCA (Table 8.3) slightly differ from the models estimated on the sub-sample of the other programmes (Table 8.4). In particular, for ERC and MSCA we do not control for the number of participants since the majority of the projects are mono-beneficiary, but we include a control for the presence of at least one European country since several projects have only non-EU as hosting country for the beneficiary. For the remaining programmes we control for the size of the consortium (number of participants), and we exclude the control for having at least one EU countries among the participants since all the projects satisfy this requisite.


### 8.2.1. Results of the productivity model
For ERC and MSCA programmes (Table 8.3), with respect to the influence of the number of research  areas attributed to the outputs, we can say that knowledge diversity positively affects productivity. In particular, if the number of research areas increases, the number of publications increases by 9.5%, and the citations by 12%. It is beneficial to diversify the knowledge, but too much diversification has a negative impact. 

In terms of project characteristics, we find that a rise in the project costs by 1% leads to fewer publications (an 8.1% reduction), and citations (21% less). An extension of the duration of the projects is associated with more publications and a higher number of citations.

For all the other programmes (Table 8.4), we observe a U-shape relationship between knowledge diversity as in the ERC and MSCA programmes. 
In Table 8.4, we observe that the presence of US increases the number of publications, but not the number of citations. Having at least one UK country or China increases both the number of publications and citations. 

Also, having at least one publication with open access boosts the number of citations received (42% more). With respect to funding effects, we find that having access to additional funding by a university, a governmental institution (Ministry), or a research Institute (next to EC funding) increases all the outcome variables. 

**Table 8.3 Productivity model, ERC and MSCA programmes.**

|                                                   | (1)               | (2)             | (3)                                             |
| ------------------------------------------------- | ----------------- | --------------- | ----------------------------------------------- |
|                                                   | OLS               | OLS             | OLS                                             |
| **VARIABLES**                                         | _log(Publications)_ | _log(Citations)_  | _Share of publications in the top 1% per project_ |
|                                                   |                   |                 |                                                 |
| _Project Characteristics_                         |                   |                 |                                                 |
| Number of research areas                          | 0.095\*\*\*       | 0.12\*\*\*      | \-0.0011\*\*\*                                  |
|                                                   | (0.0026)          | (0.0054)        | (0.00034)                                       |
| Number of research areas squared                  | \-0.00049\*\*\*   | \-0.00074\*\*\* | 1.7e-06                                         |
|                                                   | (0.000079)        | (0.00015)       | (2.5e-06)                                       |
| Number of organizations                           | \-0.0026          | \-0.013         | \-0.0013\*\*                                    |
|                                                   | (0.0035)          | (0.0084)        | (0.00056)                                       |
| Log (Cost of the project)                         | \-0.081\*\*\*     | \-0.21\*\*\*    | 0.0051                                          |
|                                                   | (0.018)           | (0.044)         | (0.0044)                                        |
| Duration of the project in months                 | 0.0048\*\*\*      | 0.0066\*\*\*    | \-0.00044\*                                     |
|                                                   | (0.00091)         | (0.0025)        | (0.00024)                                       |
| At least one publication has open access          | 0.17\*\*\*        | 0.40\*\*\*      | \-0.017\*\*\*                                   |
|                                                   | (0.011)           | (0.040)         | (0.0050)                                        |
| _Country controls_                                |                   |                 |                                                 |
| Share of countries                                | 0.032\*\*         | 0.020           | 0.00037                                         |
|                                                   | (0.016)           | (0.036)         | (0.0024)                                        |
| At least one country is the US                    | \-0.0034          | 0.15\*\*        | 0.0081                                          |
|                                                   | (0.027)           | (0.073)         | (0.0058)                                        |
| At least one country is the UK                    | 0.025             | 0.055           | \-0.0017                                        |
|                                                   | (0.018)           | (0.048)         | (0.0048)                                        |
| At least one country is China                     | 0.031             | 0.14\*\*        | 0.010\*                                         |
|                                                   | (0.022)           | (0.057)         | (0.0061)                                        |
| At least one country is EU27                      | 0.0089            | \-0.051         | \-0.0095\*                                      |
|                                                   | (0.018)           | (0.048)         | (0.0051)                                        |
| At least one country EU widening                  | \-0.12\*\*        | \-0.11          | 0.012                                           |
|                                                   | (0.052)           | (0.13)          | (0.0086)                                        |
| At least one country is not EU widening           | \-0.089\*         | \-0.056         | 0.010                                           |
|                                                   | (0.046)           | (0.12)          | (0.0068)                                        |
| At least one country is widening                  | 0.072             | \-0.25\*        | \-0.024\*\*                                     |
|                                                   | (0.052)           | (0.14)          | (0.0094)                                        |
| _Funding agency involved_                         |                   |                 |                                                 |
| At least one funding agency is University         | 0.30\*\*\*        | 0.62\*\*\*      | 0.0052                                          |
|                                                   | (0.011)           | (0.030)         | (0.0034)                                        |
| At least one funding agency is Ministry           | 0.29\*\*\*        | 0.63\*\*\*      | 0.011\*\*\*                                     |
|                                                   | (0.012)           | (0.031)         | (0.0034)                                        |
| At least one funding agency is Research Institute | 0.32\*\*\*        | 0.99\*\*\*      | 0.0091\*\*                                      |
|                                                   | (0.012)           | (0.041)         | (0.0045)                                        |
| _Type of programme_                               |                   |                 |                                                 |
| MSCA                                              | 0.074             | \-0.48          | 0.031\*\*\*                                     |
|                                                   | (0.28)            | (1.06)          | (0.0087)                                        |
| ERC-ADG                                           | 0.44              | \-0.10          | 0.034\*\*\*                                     |
|                                                   | (0.27)            | (1.05)          | (0.0087)                                        |
| ERC-COG                                           | 0.37              | \-0.11          | 0.038\*\*\*                                     |
|                                                   | (0.27)            | (1.05)          | (0.0084)                                        |
| ERC-POC                                           | \-0.075           | \-0.29          | 0.026                                           |
|                                                   | (0.28)            | (1.06)          | (0.016)                                         |
| ERC-POC-LS                                        | \-0.16            | \-1.70          | \-0.010                                         |
|                                                   | (0.28)            | (1.08)          | (0.012)                                         |
| ERC-STG                                           | 0.29              | \-0.33          | 0.038\*\*\*                                     |
|                                                   | (0.27)            | (1.05)          | (0.0081)                                        |
| ERC-SyG                                           | 0.25              | \-0.94          | 0.066\*                                         |
|                                                   | (0.28)            | (1.07)          | (0.038)                                         |
| MSCA-IF-EF                                        | \-0.14\*\*\*      | \-0.042         | \-0.0057                                        |
|                                                   | (0.050)           | (0.13)          | (0.012)                                         |
| MSCA-IF-GF                                        | \-0.12\*\*        | \-0.21          | 0.0078                                          |
|                                                   | (0.049)           | (0.13)          | (0.012)                                         |
| Constant                                          | 1.08\*\*\*        | 3.91\*\*\*      | \-0.031                                         |
|                                                   | (0.37)            | (1.22)          | (0.061)                                         |
|                                                   |                   |                 |                                                 |
| Observations                                      | 8,639             | 8,639           | 8,639                                           |
| R-squared                                         | 0.743             | 0.490           | 0.029                                           |
| Research area dummies                             | Yes               | Yes             | Yes                                             |
| Robust standard errors in parentheses             |                   |                 |                                                 |
| \*\*\* p<0.01, \*\* p<0.05, \* p<0.1              |                   |                 |            


**Table 8.4 Productivity model, all other programmes.**

|                                                   | (1)               | (2)            | (3)                                             |
| ------------------------------------------------- | ----------------- | -------------- | ----------------------------------------------- |
|                                                   | OLS               | OLS            | OLS                                             |
| **VARIABLES**                                         | _log(Publications)_ | _log(Citations)_ | _Share of publications in the top 1% per project_ |
| _Project characteristics_                         |                   |                |                                                 |
| Number of research areas                          | 0.10\*\*\*        | 0.14\*\*\*     | 0.000091                                        |
|                                                   | (0.0046)          | (0.0097)       | (0.00038)                                       |
| Number of research areas squared                  | \-0.00063\*\*\*   | \-0.0011\*\*\* | \-4.9e-06                                       |
|                                                   | (0.00013)         | (0.00026)      | (5.9e-06)                                       |
| Number of organizations                           | 7.1e-06           | \-0.0100\*     | \-0.00034\*                                     |
|                                                   | (0.0025)          | (0.0052)       | (0.00019)                                       |
| Number of participants                            | 0.000014          | 0.00013        | 2.6e-06                                         |
|                                                   | (0.000047)        | (0.000091)     | (2.3e-06)                                       |
| Log(Cost of the project)                          | \-0.0038          | \-0.016        | 0.0018                                          |
|                                                   | (0.014)           | (0.036)        | (0.0026)                                        |
| Duration of the project in months                 | 0.0019\*\*        | \-0.0025       | \-0.00030                                       |
|                                                   | (0.00073)         | (0.0020)       | (0.00018)                                       |
| At least one publication has open access          | 0.12\*\*\*        | 0.42\*\*\*     | 0.0024                                          |
|                                                   | (0.014)           | (0.051)        | (0.0048)                                        |
| _Country controls_                                |                   |                |                                                 |
| At least one country is the US                    | 0.070\*\*         | 0.054          | \-0.012\*\*                                     |
|                                                   | (0.035)           | (0.081)        | (0.0054)                                        |
| At least one country is the UK                    | 0.065\*\*\*       | 0.26\*\*\*     | 0.00039                                         |
|                                                   | (0.013)           | (0.039)        | (0.0031)                                        |
| At least one country is China                     | 0.048\*\*\*       | 0.082\*        | 0.0050                                          |
|                                                   | (0.016)           | (0.043)        | (0.0034)                                        |
| At least one country is not EU widening           | \-0.017           | \-0.14\*\*\*   | \-0.0032                                        |
|                                                   | (0.016)           | (0.045)        | (0.0035)                                        |
| _Funding agency involved_                         |                   |                |                                                 |
| At least one funding agency is University         | 0.21\*\*\*        | 0.36\*\*\*     | 0.0047                                          |
|                                                   | (0.017)           | (0.046)        | (0.0030)                                        |
| At least one funding agency is Ministry           | 0.26\*\*\*        | 0.47\*\*\*     | 0.0033                                          |
|                                                   | (0.016)           | (0.044)        | (0.0031)                                        |
| At least one funding agency is Research Institute | 0.28\*\*\*        | 0.66\*\*\*     | 0.012\*\*\*                                     |
|                                                   | (0.015)           | (0.045)        | (0.0035)                                        |
| _Type of programme_                               |                   |                |                                                 |
| FET                                               | \-0.081\*         | 0.014          | \-0.011                                         |
|                                                   | (0.046)           | (0.13)         | (0.011)                                         |
| FTI                                               | \-0.18\*\*\*      | \-0.0095       | \-0.022\*                                       |
|                                                   | (0.057)           | (0.23)         | (0.011)                                         |
| ICT                                               | 0.057\*\*         | \-0.22\*\*\*   | \-0.0018                                        |
|                                                   | (0.025)           | (0.071)        | (0.0049)                                        |
| INFRA                                             | \-0.067           | 0.039          | \-0.0080                                        |
|                                                   | (0.065)           | (0.16)         | (0.011)                                         |
| LEITs                                             | \-0.087\*\*       | 0.28\*\*       | 0.00063                                         |
|                                                   | (0.044)           | (0.12)         | (0.011)                                         |
| SC1                                               | \-0.090\*\*       | 0.22\*         | 0.015                                           |
|                                                   | (0.043)           | (0.12)         | (0.013)                                         |
| SC2                                               | \-0.045           | 0.28\*\*       | 0.00069                                         |
|                                                   | (0.050)           | (0.13)         | (0.012)                                         |
| SC3                                               | \-0.11\*\*        | 0.35\*\*\*     | 0.015                                           |
|                                                   | (0.046)           | (0.13)         | (0.013)                                         |
| SC4                                               | \-0.15\*\*\*      | \-0.099        | \-0.0039                                        |
|                                                   | (0.044)           | (0.12)         | (0.011)                                         |
| SC5                                               | \-0.049           | 0.49\*\*\*     | 0.0091                                          |
|                                                   | (0.054)           | (0.14)         | (0.012)                                         |
| SC6                                               | 0.016             | \-0.048        | 0.0100                                          |
|                                                   | (0.052)           | (0.15)         | (0.014)                                         |
| SC7                                               | \-0.054           | \-0.11         | \-0.00094                                       |
|                                                   | (0.052)           | (0.15)         | (0.012)                                         |
| SEWP                                              | \-0.12\*\*        | \-0.18         | \-0.014                                         |
|                                                   | (0.050)           | (0.14)         | (0.012)                                         |
| SWAFS                                             | \-0.13\*\*        | \-0.091        | 0.015                                           |
|                                                   | (0.063)           | (0.19)         | (0.023)                                         |
| Constant                                          | 0.30              | 1.00\*\*       | 0.0037                                          |
|                                                   | (0.19)            | (0.51)         | (0.036)                                         |
|                                                   |                   |                |                                                 |
| Observations                                      | 4,117             | 4,117          | 4,117                                           |
| R-squared                                         | 0.835             | 0.625          | 0.035                                           |
| Research area dummies                             | Yes               | Yes            | Yes                                             |
| Robust standard errors in parentheses             |                   |                |                                                 |
| \*\*\* p<0.01, \*\* p<0.05, \* p<0.1              |                   |                |           


