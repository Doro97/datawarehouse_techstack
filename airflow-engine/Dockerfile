FROM python:3.7

# Insql,crypto]’ mysql-connector-pythonstall and setup Airflow
RUN pip3 install ‘apache-airflow[mysql,crypto]’ mysql-connector-python

# Configure Airflow: connect to backend
WORKDIR /root/airflow/
COPY airflow.sh airflow.sh
RUN bash airflow.sh
COPY mysqlconnect.py mysqlconnect.py
CMD ./airflow.sh 
