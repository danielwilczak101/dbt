{% macro hidden_ref(table) %}
    {{ return(
        target.database ~ '.' ~ target.schema ~ '.' ~ table
    ) }}
{% endmacro %}