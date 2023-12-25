# Background
Our client is PowerCo, a major gas and electricity utility company that supplies to corporate, SME (small and medium enterprise) and residential customers. The power liberalization of the energy market in Europe has led to significant customer churn, especially in the SME segment. They have partnered with us to help diagnose and drive the source of churning SME customers.

A fair hypothesis is that price changes affect customer churn. Therefore, it is helpful to know which customers are more likely to churn at their current price, for which a good predictive model could be useful.


# Project Overview

The project focuses on understanding customer churn within the energy industry. Customer churn, also known as customer attrition, refers to the phenomenon where customers stop using the services of a company and move to a competitor or discontinue using the service altogether. This project aims to analyze and model customer behavior to identify factors that contribute to churn and develop strategies to mitigate it.

# Data Dictionary

The dataset includes the following columns with their descriptions:
### Client Data (Columns)
| Column                 | Description                                           |
|------------------------|-------------------------------------------------------|
| id                     | Client company identifier                             |
| activity_new           | Category of the company’s activity                    |
| channel_sales          | Code of the sales channel                             |
| cons_12m               | Electricity consumption of the past 12 months         |
| cons_gas_12m           | Gas consumption of the past 12 months                 |
| cons_last_month        | Electricity consumption of the last month             |
| date_activ             | Date of activation of the contract                    |
| date_end               | Registered date of the end of the contract             |
| date_modif_prod        | Date of the last modification of the product          |
| date_renewal           | Date of the next contract renewal                     |
| forecast_cons_12m      | Forecasted electricity consumption for next 12 months |
| forecast_cons_year     | Forecasted electricity consumption for the next year  |
| forecast_discount_energy| Forecasted value of current discount                  |
| forecast_meter_rent_12m| Forecasted bill of meter rental for the next 2 months |
| forecast_price_energy_off_peak| Forecasted energy price for 1st period (off peak) |
| forecast_price_energy_peak| Forecasted energy price for 2nd period (peak)      |
| forecast_price_pow_off_peak| Forecasted power price for 1st period (off peak)   |
| has_gas                | Indicated if client is also a gas client             |
| imp_cons               | Current paid consumption        
| margin_gross_pow_ele   | Gross margin on power subscription                   |
| margin_net_pow_ele     | Net margin on power subscription                     |
| nb_prod_act            | Number of active products and services               |
| net_margin             | Total net margin                                     |
| num_years_antig        | Antiquity of the client (in number of years)         |
| origin_up              | Code of the electricity campaign the customer first subscribed to |
| pow_max                | Subscribed power                                     |
| churn                  | Has the client churned over the next 3 months         |

### Price Data (Columns)
| Column                 | Description                                           |
|------------------------|-------------------------------------------------------|
| id                     | Client company identifier                             |
| price_date             | Reference date                                        |
| price_off_peak_var     | Price of energy for the 1st period (off peak)         |
| price_peak_var         | Price of energy for the 2nd period (peak)             |
| price_mid_peak_var     | Price of energy for the 3rd period (mid peak)         |
| price_off_peak_fix     | Price of power for the 1st period (off peak)          |
| price_peak_fix         | Price of power for the 2nd period (peak)              |
| price_mid_peak_fix     | Price of power for the 3rd period (mid peak)          |

# Project Goals

1. Data Exploration: Explore and analyze the dataset to identify trends, patterns, and potential factors influencing customer churn.

2. Feature Engineering: Create relevant features and preprocess the data for modeling.

3. What are the key factors for a customer deciding to stay with or switch providers?

4. Verify the hypothesis of price sensitivity being correlated with churn

By working on this project, we aim to gain a deeper understanding of customer behavior in the Energy sector and develop data-driven solutions to reduce churn and improve customer retention.

# Conclusion 
### Findings:
- Approximately 9,7% customers have churned
- There are outliers present in the data and these must be treated before modelling
-  Customers are not sensitive to price changes.

### Suggestions:
- Customer churn maybe due to competitor provider offer more attractive price. 

- Client feedback of PowerCo may reveal the hidden reason why customer switch provider. 




