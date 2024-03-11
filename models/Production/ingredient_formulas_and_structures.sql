{{ config(materialized='table') }}

select
    uid.Unique_Ingredient_Identifier,
    uid.Preferred_Term,
    uid.Molecular_Formula,
    uid.INCHI_Key,
    uid.SMILES
from {{ ref('dim_unique_ingredient_identifier') }} uid