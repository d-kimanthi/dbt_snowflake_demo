WITH CTE AS (
select
TO_TIMESTAMP(STARTED_AT) AS STARTED_AT,
DATE(TO_TIMESTAMP(STARTED_AT)) AS DATE_STARTED_AT,
HOUR(TO_TIMESTAMP(STARTED_AT)) AS HOUR_STARTED_AT,
{{ get_date_type('started_at') }} AS DAY_TYPE,
{{ get_season('started_at') }} AS STATION_OF_YEAR
from {{ source('demo', 'bike') }}
where STARTED_AT != 'started_at' and STARTED_AT != '"started_at"'
)
select 
*
from CTE