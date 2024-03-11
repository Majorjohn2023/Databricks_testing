{{ config(materialized='table') }}

select
    uid.Unique_Ingredient_Identifier,
    uid.Preferred_Term,
    uid.UNII_TYPE,
    uid.Substance_Type
from {{ ref('dim_unique_ingredient_identifier') }} uid