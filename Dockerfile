FROM python:3.12-slim

WORKDIR /usr/dbt_src

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY lone_star_dbt/ ./lone_star_dbt/

WORKDIR /usr/dbt_src/lone_star_dbt

CMD ["dbt", "build"]