{% macro insert_audit (action_name) -%}

insert into FIVETRAN_DATABASE.DBT_DEFAULT_SCHEMA.DBT_AUDIT values(sysdate(),'{{ action_name }}');
commit;

{%- endmacro %}


