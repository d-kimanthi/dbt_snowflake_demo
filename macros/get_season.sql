{%macro get_season(dt) %}
CASE WHEN MONTH(TO_TIMESTAMP({{dt}})) in (12,1,2)
    THEN 'WINTER'
    WHEN MONTH(TO_TIMESTAMP({{dt}})) in (3,4,5)
    THEN 'SPRING'
    WHEN MONTH(TO_TIMESTAMP({{dt}})) in (6,7,8)
    THEN 'SUMMER'
    ELSE 'AUTUMN' 
END
{%endmacro%}