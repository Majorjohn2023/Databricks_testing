{{ config(materialized='table') }}

select
    uid.Unique_Ingredient_Identifier,
    uid.Preferred_Term,
    uid.Registry_Number,
    uid.European_Chemicals_Number,
    uid.NCI_Thesaurus_Code,
    uid.RXNORM_Ingredient_Code,
    uid.PubChem_Compound_Id,
    uid.ITIS_Id,
    uid.NCBI_Id,
    uid.USDA_Plants_Id,
    uid.GRIN_Id,
    uid.MPNS_Id,
    uid.INN_Id,
    uid.USAN_ID
from {{ ref('dim_unique_ingredient_identifier') }} uid