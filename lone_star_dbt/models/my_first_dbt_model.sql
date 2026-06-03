SELECT
    id,
    name,
    age
FROM {{ ref('my_first_dbt_model') }}