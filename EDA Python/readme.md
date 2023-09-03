# Movie Data Analysis
[Alt text](image.png)

## Overview

This project involves the analysis of a movie dataset using Python. The dataset contains information about various movies, including details such as name, rating, genre, year of release, score, votes, director, writer, star cast, country, budget, gross earnings, company, and runtime. The main objective of this project is to explore the dataset, visualize relationships between certain features, and calculate correlations among numeric attributes.

## Data Exploration

In the initial section of the code, we start by exploring the dataset to understand its structure and identify any missing data. The following steps are performed:

- We loop through each column in the DataFrame (`df`) and calculate the percentage of missing values for each column. This information is printed to the console.

- The dataset is displayed, showing the first few rows to give a brief overview of the data.

## Data Visualization

After exploring the dataset, we proceed to create visualizations to gain insights into the relationships between budget and gross earnings in movies. The following visualizations are generated:

### Scatter Plot

We create a scatter plot to visualize the relationship between the budget and gross earnings of movies. This plot provides a visual representation of how these two variables are related.

### Regression Plot

Using Seaborn, we generate a regression plot that also depicts the relationship between budget and gross earnings. This plot includes a regression line, which helps visualize the trend in the data.

### Correlation Matrix

We calculate the Pearson correlation coefficients between numeric features in the dataset. The correlation matrix is then visualized as a heatmap using Seaborn. This heatmap provides insights into the strength and direction of relationships between various numeric attributes. 

## Data Transformation

Before creating the correlation matrix, we convert categorical columns in the DataFrame into numerical values. This is done by encoding categorical variables as numerical categories, which allows us to calculate correlations between all features.

## Correlation Analysis

We calculate and display the correlation pairs among all features in the dataset. This information can help identify which pairs of attributes have strong or weak correlations.

## Conclusion

This project aims to provide a comprehensive analysis of the movie dataset, including data exploration, visualization of relationships between budget and gross earnings, and correlation analysis. Understanding these relationships can be valuable for making data-driven decisions in the movie industry.

Please note that you can further extend this project by conducting more in-depth analysis or using machine learning techniques to make predictions or classifications based on the dataset.

Feel free to explore the code and the insights generated from the analysis. If you have any questions or suggestions, please don't hesitate to reach out.
