{%- macro format_bytes(data_scanned_in_bytes) -%}
    {%- if data_scanned_in_bytes < 1000 * 1024 * 1024 -%}
        {{ (data_scanned_in_bytes / (1024 * 1024)) | round(2) }} MB
    {%- elif data_scanned_in_bytes < 1000 * 1024 * 1024 * 1024 -%}
        {{ (data_scanned_in_bytes / (1024 * 1024 * 1024)) | round(2) }} GB
    {%- else -%}
        {{ (data_scanned_in_bytes / (1024 * 1024 * 1024 * 1024)) | round(2) }} TB
    {%- endif -%}
{%- endmacro -%}
