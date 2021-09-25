INIT_FILE=.airflowinitialized
if [ ! -f «$INIT_FILE» ]; then
    # Create all Airflow configuration files
    airflow initdb
    rm /root/airflow/airflow.db
    
  
    # Setup the DB
    python mysqlconnect.py
    airflow initdb
    
    # This configuration is done only the first time
     #«$INIT_FILE»
fi

# Run the Airflow webserver and scheduler
airflow scheduler &
airflow webserver &
wait 