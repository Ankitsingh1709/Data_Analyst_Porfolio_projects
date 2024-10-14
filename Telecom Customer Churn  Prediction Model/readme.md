# Customer Churn in Telecommunications
![image](https://github.com/Ankitsingh1709/Python-projects/assets/98055645/caba06a1-0636-4b02-a4ab-3b43d2536491)
## Project Overview
The Customer Churn in Telecommunications project focuses on understanding and predicting customer churn within the telecommunications industry. Customer churn, also known as customer attrition, refers to the phenomenon where customers stop using the services of a company and move to a competitor or discontinue using the service altogether. This project aims to analyze and model customer behavior to identify factors that contribute to churn and develop strategies to mitigate it.

## Data Dictionary

The dataset includes the following columns with their descriptions:

| Column              | Description                                                                                     |
|---------------------|-------------------------------------------------------------------------------------------------|
| customerID          | Unique identifier for each customer.                                                            |
| gender              | Customer's gender (e.g., Male or Female).                                                       |
| SeniorCitizen       | Whether the customer is a senior citizen (0 for No, 1 for Yes).                                   |
| Partner             | Whether the customer has a partner (Yes or No).                                                  |
| Dependents          | Whether the customer has dependents (Yes or No).                                                 |
| tenure              | The number of months a customer has stayed with the company.                                     |
| PhoneService        | Whether the customer has phone service (Yes or No).                                             |
| MultipleLines       | Type of phone service (e.g., No phone service, Multiple lines).                                   |
| InternetService     | Type of internet service subscribed by the customer (e.g., DSL, Fiber optic).                     |
| OnlineSecurity      | Whether the customer has online security (e.g., Yes, No, No internet service).                   |
| OnlineBackup        | Whether the customer has online backup (e.g., Yes, No, No internet service).                     |
| DeviceProtection    | Whether the customer has device protection (e.g., Yes, No, No internet service).                 |
| TechSupport         | Whether the customer has tech support (e.g., Yes, No, No internet service).                      |
| StreamingTV         | Whether the customer has streaming TV service (e.g., Yes, No, No internet service).               |
| StreamingMovies     | Whether the customer has streaming movies service (e.g., Yes, No, No internet service).           |
| Contract            | The type of contract the customer has (e.g., Month-to-month, One year).                          |
| PaperlessBilling    | Whether the customer opts for paperless billing (Yes or No).                                     |
| PaymentMethod       | Payment method used by the customer (e.g., Electronic check, Mailed check).                       |
| MonthlyCharges      | The monthly charges paid by the customer.                                                       |
| TotalCharges        | The total charges paid by the customer.                                                         |
| Churn               | Whether the customer churned (Yes or No).                                                        |


## Project Goals
1. **Data Exploration:** Explore and analyze the dataset to identify trends, patterns, and potential factors influencing customer churn.

2. **Feature Engineering:** Create relevant features and preprocess the data for modeling.

3. **Modeling:** Develop predictive models to forecast customer churn based on historical data.

4. **Evaluation:** Evaluate model performance and identify the most effective model for predicting churn.

5. **Recommendations:** Provide insights and recommendations for strategies to reduce churn and retain valuable customers.

By working on this project, we aim to gain a deeper understanding of customer behavior in the telecommunications sector and develop data-driven solutions to reduce churn and improve customer retention.


# Conclusion
### Insights
1. Electronic Check Medium: It's noteworthy that customers using electronic check as their payment medium tend to have the highest churn rates. This suggests that there might be issues or concerns related to the electronic check payment method that could be contributing to churn.

2. Contract Type - Monthly Customers: Customers on a monthly contract basis are more likely to churn. This could be attributed to the absence of long-term commitments, as they have the flexibility to switch providers without contractual obligations.

3. No Online Security, No Tech Support: Customers without online security and tech support features tend to exhibit higher churn rates. This indicates the importance of these services in retaining customers, as their absence may lead to dissatisfaction and attrition.

4. Non-Senior Citizens: It's interesting to observe that non-senior citizens are more likely to churn. This demographic insight can inform targeted retention strategies to better cater to the needs and preferences of different age groups.
