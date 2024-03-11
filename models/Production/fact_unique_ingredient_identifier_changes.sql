{{ config(materialized='table') }}

select
    uic.UNII,
    uic.UNII_Group_Id,
    uic.UNII_Group_Name,
    uic.Type_of_Change,
    uid.Preferred_Term,
    uid.Molecular_Formula,
    uid.INCHI_Key,
    uid.SMILES
from {{ ref('stg_unique_ingredient_identifier_changes') }} uic
left join {{ ref('dim_unique_ingredient_identifier') }} uid
    on uic.UNII = uid.Unique_Ingredient_Identifier