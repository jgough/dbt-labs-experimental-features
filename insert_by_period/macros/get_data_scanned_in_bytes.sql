{% macro get_data_scanned_in_bytes(result) -%}
  {{ return(adapter.dispatch('get_rows_inserted', 'insert_by_period')(result)) }}
{% endmacro %}

{% macro default__get_data_scanned(result) %}
  
  {% if 'response' in result.keys() %}
    {% set data_scanned_in_bytes = result['response']['data_scanned_in_bytes'] %}
  {% endif %}

  {{return(data_scanned_in_bytes)}}

{% endmacro %}
