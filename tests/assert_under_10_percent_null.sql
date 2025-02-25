select 
    SUM(CASE WHEN id IS NULL THEN 1 ELSE 0 END) / count(*) as total_nulls
from {{ ref('my_first_dbt_model') }}
having SUM(CASE WHEN id IS NULL THEN 1 ELSE 0 END) / count(*) > .4