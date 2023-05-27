{% macro hidden_ref(table) %}
    {%- if target.name == 'prod' or target.name == 'test' -%}
        {{return (ref(table))}}
    {%- else -%}
        {{ return(
            target.database ~ '.' ~ target.schema ~ '.' ~ table
        ) }}
    {%- endif -%}
{% endmacro %}