# Customer retention analysis
![Alt text](og_image_mall_web.jpg)
Customer retention can be described as a way to look at how engaged and loyal customers are, that is, whether they continue using the service after their first purchase. 

# Background
This case study is done on wolt database. wolt is a leading platform that's makes it easy for customers to order whatever they need on one app, for merchants to make additional sales, and for couriers to make meaningful earnings flexibly.
- The data is an artificial dataset that could be produced by wolt purchase process, where a user makes their first and possibly following purchases from Wolt.  
- Wolt has separated these purchases into two files, the first one containing only the users’ first ever purchases from Wolt **first_purchases**, and the second one containing all purchases from these users **purchases**.

# Project overview
**Please refer to solution SQL file where I have explained each steps in detail with SQL querry**

The project task is to see how well Wolt manages to retain its customers month afeter month based on when users made their first ever purchase.
- Cohort based monthly retention for Retail product line.
- Cohort based monthly retention for Restaurant product line

I have used PostgreSQL with pgAdmin to solve the problem and Power BI for visualizations

# Data Dictionary
The dataset includes the following columns with their descriptions:
### first purchases
| Coloum                        | Description                                            |
|-------------------------------|--------------------------------------------------------|
| First Purchase Date           | Date (UTC) when a user did their first Wolt purchase.  |
| First Purchase Product Line   | Product line of the first purchase: 'Restaurant' or 'Retail store'. |
| User ID                       | Unique ID of the user who made the first purchase.      |
| Purchase ID                   | Unique ID of the purchase.                              |
| Venue ID                      | Unique ID of the venue where the purchase was made.     |

### purchases

|  Coloum               | Description                                        |
|-----------------------|----------------------------------------------------|
| Purchase Date         | Date (UTC) of the purchase.                         |
| Product Line          | Product line of the purchase: 'Restaurant' or 'Retail store'. |
| User ID               | Unique ID of the user who made the purchase.         |
| Purchase ID           | Unique ID of the purchase.                           |
| Venue ID              | Unique ID of the venue where the purchase was made.  |

# Technologies Used:
- PostgreSQL
- Power BI
I am going to use PostgreSQL to solve the problem and calculate the cohort based monthaly retention for Retal and Restaurant, and then use Power BI for visualizations.
 
The hole process can be done in Power BI but they asked to use SQL and any other tool for visualizations.

# Results 
### Findings:

Below figure shows the result for **Restaurant** product line. 

![Alt text](image.png)

by percentage

![Alt text](image-1.png)

---

Below figure shows the result for **Restaurant** product line.



![Alt text](image-4.png)


by percentage 
![Alt text](image-5.png)

# Suggestion 
- **User Profiles:** Adding demographic data or user characteristics might provide insights into different user behaviors affecting retention.
- **Marketing Campaign Data:** Information on marketing campaigns during specific periods could correlate with changes in retention rates.
- **User Engagement Metrics:** Incorporating data on user activity or engagement beyond purchases could offer a more comprehensive view of retention.
- **Feedback or Customer Satisfaction Data:** Gathering feedback or customer satisfaction scores might correlate with retention rates.