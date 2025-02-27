{% macro group_by(n) %}
    GROUP BY 
    {% for i in range(n) %}
        {{ i }}
        {% if not loop.last %}
            ,
        {% endif %}
    {% endfor %}
{% endmacro %}