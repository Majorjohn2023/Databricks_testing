{{ config(materialized='table') }}

select
    uin.UNII_Name,
    uin.Type_of_Name,
    uin.Unique_Ingredient_Identifier,
    uid.Preferred_Term
from {{ ref('stg_unique_ingredient_identifier_names') }} uin
left join {{ ref('dim_unique_ingredient_identifier') }} uid
    on uin.Unique_Ingredient_Identifier = uid.Unique_Ingredient_Identifier