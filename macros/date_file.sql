

{% MACRO data_file(date_column) %}
(select struct(
    {{date_column}} as original_date,
    EXTRACT(year from {{date_column}}) as year,
    EXTRACT(month from {{date_column}}) as month,
    EXTRACT(day from {{date_column}}) as year,
     EXTRACT(Dayofweek from {{date_column}}) as day_of_week,
     EXTRACT(Dayofyear from {{date_column}}) as day_of_year,
     EXTRACT(week from {{date_column}}) as week,
     EXTRACT(quater from {{date_column}}) as quater) AS extract_data)

{% ENDMACRO %}