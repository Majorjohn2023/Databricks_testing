{{ config(materialized='view') }}

select
    UNII_Name,
    Type_of_Name,
    Unique_Ingredient_Identifier,
    Preferred_Term
from {{ source('unique_ingredient_identifier', 'unique_ingredient_identifier_names') }}