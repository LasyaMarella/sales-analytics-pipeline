from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime, timedelta

default_args = {
    'owner': 'airflow',
    'depends_on_past': False,
    'email_on_failure': False,
    'email_on_retry': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

with DAG(
    'Lasya_Project_1_DAG',
    default_args=default_args,
    description='Orchestrate DBT seed, run, and test for sales analytics',
    schedule='@daily',
    start_date=datetime(2025, 7, 21),
    catchup=False,
    tags=['dbt', 'sales'],
) as dag:

    dbt_dir = '/opt/airflow/dbt'  # Your DBT project path inside the container

    dbt_seed = BashOperator(
        task_id='dbt_seed',
        bash_command=f'cd {dbt_dir} && dbt seed --profiles-dir {dbt_dir}',
    )

    dbt_run = BashOperator(
        task_id='dbt_run',
        bash_command=f'cd {dbt_dir} && dbt run --profiles-dir {dbt_dir}',
    )

    dbt_test = BashOperator(
        task_id='dbt_test',
        bash_command=f'cd {dbt_dir} && dbt test --profiles-dir {dbt_dir}',
    )

    dbt_seed >> dbt_run >> dbt_test
