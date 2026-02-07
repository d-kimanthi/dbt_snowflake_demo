{%macro get_date_type(dt) %}
CASE 
    WHEN DAYNAME(TO_TIMESTAMP({{dt}})) in ('Sat','Sun')
    THEN 'WEEKEND'
    ELSE 'BUSINESSDAY'
END
{%endmacro%}