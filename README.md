# Women in Machine Learning  Presentation 2024 (Mastering SQL for Data Science)
This repository keeps track of my women in machine learning presentation document, Accra Branch.




# Master SQL for Data Science - Project Files

This repository contains all the necessary files for the **Master SQL for Data Science** presentation and practical session. Below is a detailed description of each file and its purpose.

## Overview
The project demonstrates:
- How to normalize a dataset for machine learning into three separate tables.
- Writing SQL queries to retrieve data for analysis.
- Understanding the importance of database normalization and querying skills in data science workflows.

The dataset represents a simulated customer purchase system. It includes information about customers, products, and purchases.

## File Descriptions

### 1. **create_customerpurchase_dat.sql**
- **Purpose**: Creates and populates a database for the customer purchase system.
- **Tables Created**:
  - `Customer`: Stores customer information.
  - `Product`: Contains product details.
  - `Purchase`: Tracks purchase records, linking customers to the products they bought.
- **Usage**: Execute this script to initialize the database and populate it with sample data.

### 2. **customer.sql**
- **Purpose**: Contains SQL commands specific to creating and managing the `Customer` table.
- **Details**:
  - Includes table creation commands, data insertion, and constraints.
  - Ensures that customer data adheres to the schema.

### 3. **product.sql**
- **Purpose**: Defines and manages the `Product` table.
- **Details**:
  - Includes commands for creating the table and populating it with sample product data.
  - Establishes the schema for product-related information.

### 4. **purchase.sql**
- **Purpose**: Focuses on the `Purchase` table.
- **Details**:
  - Creates a table to link customers and products through their purchases.
  - Includes foreign key relationships to `Customer` and `Product` tables.

### 5. **query.sql**
- **Purpose**: Demonstrates how to query the normalized database to retrieve meaningful insights.
- **Queries Include**:
  - Selecting all customers and their purchases.
  - Aggregating purchase data for analysis.
  - Joining multiple tables to generate insights.
  - Filtering and sorting data based on specific conditions.

### 6. **query_history.txt**
- **Purpose**: Contains the history of all SQL queries executed during the session.
- **Details**:
  - Logs queries written in an online SQL environment.
  - Useful for reviewing and replicating the practical steps demonstrated in the presentation.

## How to Use

### Prerequisites
- A SQL database system (e.g., MySQL, PostgreSQL, SQLite).
- A database client (e.g., MySQL Workbench, DBeaver, or an online SQL platform).

### Steps
1. **Set up the database**:
   - Run `create_customerpurchase_dat.sql` to create the database and populate it with sample data.
2. **Understand the schema**:
   - Review the individual scripts (`customer.sql`, `product.sql`, `purchase.sql`) to understand table structures and constraints.
3. **Run queries**:
   - Use `query.sql` to explore the data and practice SQL commands.
   - Modify queries to answer additional questions about the dataset.
4. **Review query history**:
   - Check `query_history.txt` for a complete log of queries executed during the presentation.

## Learning Objectives
- Understand database normalization and its importance.
- Learn to create and manage relational databases.
- Write SQL queries to retrieve and analyze data.
- Develop practical SQL skills for real-world data science workflows.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
Feel free to contribute or raise issues if you encounter any problems!
```





