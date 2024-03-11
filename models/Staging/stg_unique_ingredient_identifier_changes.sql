{{ config(materialized='view') }}

select
    UNII,
    UNII_Group_Id,
    UNII_Group_Name,
    Type_of_Change
from {{ source('unique_ingredient_identifier', 'unique_ingredient_identifier_changes') }}