# datawarehouse_techstack

# Project Overview
This project will involve the building of a data warehouse tech-stack that consists of a data warehouse, which is MySQL, an ETL tool which is dbt , a reporting environment that is redash and an orchestration service to monitor and schedule workflows, Airflow.

# Data Overview
The input data used in the project comes from the Caltrans Performance Measurement System (PeMs) website. The traffic data is collected in real time from over 39000 individual detectors. These sensors span the freeway system across all major metropolitan areas of the State of California. Data captured by the inductive loops is collected into 30 second aggregated buckets at the detector station and sent to PeMs. The 30 second readings are further aggregated into 5 minute samples (at the station level) prior to archival. California-wide, the system records approximately 350 thousand measurements each day. 

For this project the data points extracted are specifically from the I80 freeway near Davis, CA. The data files provide the following comma-delimited data fields: date/time stamp, station identifier, district, freeway, direction, lane type, length, number of samples, percentage of non-imputed samples, total flow, average occupancy, average speed. 

# Technologies used 
i.	MySQL. The MySQL database in this project will focus on the extraction part of the pipeline. The different files obtained from the website are loaded into the MySQL database and converted into tables for analysis
ii.	Data Build Tool (dbt).The dbt tool will be used to transform the obtained data in the warehouse. This is done by simply writing select statements. It acts as an orchestration layer on top of the data warehouse to improve and accelerate the data transformation process. It also has an in-built support for CI/CD pipelines to test models and stage them.
iii.	Redash. This is a business intelligence tool that houses a robust range of capabilities. It can easily be integrated with data warehouses and write SQL queries to pull subsets of data for visualizations.
iv.	Airflow. It is used to manage computational workflows and data processing pipelines. Scripts are written in Python and then scheduled to run at  regular intervals