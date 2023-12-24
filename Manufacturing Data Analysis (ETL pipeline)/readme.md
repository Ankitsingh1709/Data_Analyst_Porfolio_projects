# Project: Manufacturing Data Analysis with Python, PostgreSQL, and dbt

## Overview
This project focuses on analyzing manufacturing data at X to ensure production is aligned with our plans. We'll create a visualization that tracks the number of units manufactured, planned, and the production backlog, helping us make data-driven decisions. The process includes data extraction using Python, data transformation with dbt, and visualization in Power BI.
![image](https://github.com/Ankitsingh1709/Python-projects/assets/98055645/73ce43b9-a7e5-4ffa-aab3-9995effe1d2f)


## Project Structure
- **Data Extraction (Python Script)**:
  - We begin by using Python to extract data from Excel files in a specified directory.
  - Each Excel file represents a month's manufacturing data.
  - We use the Pandas library to load the data into PostgreSQL.
  - The script is flexible and robust, handling various data types effortlessly.

- **dbt Models**:
  - In the dbt part of the project, we create models to aggregate and transform the data for analysis.
  
  ### Model 1: manufacturing_log
  - We consolidate all manufacturing data from different Excel files into a temporary table.
  
  ### Model 2: manufacturing_log_v2
  - We create a table with relevant columns for analysis, such as week numbers and product quantities.
  - This table serves as the basis for further calculations.

  ### Model 3: manufacturing_summary
  - We aggregate the manufacturing data by week, providing a summary of the total products produced.
  
  ### Model 4: production_summary
  - We aggregate the production plan data by week and product.
  - This table allows us to compare planned production with actual manufacturing.

  ### Model 5: production_backlog
  - We calculate the production backlog by subtracting actual production from planned production.
  - This is a critical metric for understanding our production efficiency.

    ![Screenshot (2)](https://github.com/Ankitsingh1709/Python-projects/assets/98055645/04f57592-9aa9-473f-a874-212d711ba7f2)


- **Power BI Visualization**:
  - Using Power BI, we create an interactive visualization that fulfills the Head of Operations requirements.
  - The visualization displays units manufactured and planned as bars, while the production backlog is shown as a line.
  - Users can select different products for a more tailored view.

## Key Findings
- We analyzed the manufacturing data and identified significant production backlogs in certain months.
- February and October had the largest backlogs, indicating potential production inefficiencies or delays.
- Other notable months with backlogs include May, January, and September.

## Further Investigation
- To understand the causes of these backlogs, we recommend investigating additional data sources, such as:
  - Supplier performance data to check for delays in component deliveries.
  - Manufacturing process data to identify bottlenecks or inefficiencies.
  - Quality control data to assess if rejections or defects impacted production.

## Conclusion
This project demonstrates the power of data analytics in tracking manufacturing performance. By extracting, transforming, and visualizing data, we gain valuable insights into our production process. The production backlog analysis highlights areas for improvement, and further investigation into related data sources can help us optimize our operations.

Feel free to explore the code and data in this repository to gain a deeper understanding of the analysis. If you have any questions or suggestions, please don't hesitate to reach out. Your feedback is valuable as we continue to enhance our data-driven decision-making at X...
