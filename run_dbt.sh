#!/bin/sh

set -e

echo "Running dbt deps for lone_star_dbt"
dbt deps --project-dir lone_star_dbt

echo "Running dbt build"
dbt run --project-dir lone_star_dbt