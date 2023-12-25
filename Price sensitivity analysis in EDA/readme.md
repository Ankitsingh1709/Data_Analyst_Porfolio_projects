# Background
Our client is PowerCo, a major gas and electricity utility company that supplies to corporate, SME (small and medium enterprise) and residential customers. The power liberalization of the energy market in Europe has led to significant customer churn, especially in the SME segment. They have partnered with us to help diagnose and drive the source of churning SME customers.

A fair hypothesis is that price changes affect customer churn. Therefore, it is helpful to know which customers are more likely to churn at their current price, for which a good predictive model could be useful.


# Project Overview

The project focuses on understanding customer churn within the energy industry. Customer churn, also known as customer attrition, refers to the phenomenon where customers stop using the services of a company and move to a competitor or discontinue using the service altogether. This project aims to analyze and model customer behavior to identify factors that contribute to churn and develop strategies to mitigate it.

# Data Dictionary

The dataset includes the following columns with their descriptions:
### client_data.csv
●	id = client company identifier                         
●	activity_new = category of the company’s activity    
●	channel_sales = code of the sales channel                     
●	cons_12m = electricity consumption of the past 12 months   
●	cons_gas_12m = gas consumption of the past 12 months     
●	cons_last_month = electricity consumption of the last month   
●	date_activ = date of activation of the contract       
●	date_end = registered date of the end of the contract     
●	date_modif_prod = date of the last modification of the product     
●	date_renewal = date of the next contract renewal                        
●	forecast_cons_12m = forecasted electricity consumption for next 12 months  
●	forecast_cons_year = forecasted electricity consumption for the next calendar year    
●	forecast_discount_energy = forecasted value of current discount       
●	forecast_meter_rent_12m = forecasted bill of meter rental for the next 2 months        
●	forecast_price_energy_off_peak = forecasted energy price for 1st period (off peak)     
●	forecast_price_energy_peak = forecasted energy price for 2nd period (peak)             
●	forecast_price_pow_off_peak = forecasted power price for 1st period (off peak)          
●	has_gas = indicated if client is also a gas client        
●	imp_cons = current paid consumption        
●	margin_gross_pow_ele = gross margin on power subscription    
●	margin_net_pow_ele = net margin on power subscription        
●	nb_prod_act = number of active products and services            
●	net_margin = total net margin                                                    
●	num_years_antig = antiquity of the client (in number of years)    
●	origin_up = code of the electricity campaign the customer first subscribed to    
●	pow_max = subscribed power                                             
●	churn = has the client churned over the next 3 months          

### price_data.csv

-	id = client company identifier
- price_date = reference date
-	price_off_peak_var = price of energy for the 1st period (off peak)
- 	price_peak_var = price of energy for the 2nd period (peak)
-	price_mid_peak_var = price of energy for the 3rd period (mid peak)
-	price_off_peak_fix = price of power for the 1st period (off peak)
-	price_peak_fix = price of power for the 2nd period (peak)
-	price_mid_peak_fix = price of power for the 3rd period (mid peak)

