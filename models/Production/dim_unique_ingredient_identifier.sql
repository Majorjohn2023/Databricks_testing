{{ config(materialized='table') }}

select
    uir.Unique_Ingredient_Identifier,
    uir.Preferred_Term,
    uir.Registry_Number,
    uir.European_Chemicals_Number,
    uir.NCI_Thesaurus_Code,
    uir.RXNORM_Ingredient_Code,
    uir.PubChem_Compound_Id,
    uir.ITIS_Id,
    uir.NCBI_Id,
    uir.USDA_Plants_Id,
    uir.GRIN_Id,
    uir.MPNS_Id,
    uir.INN_Id,
    uir.USAN_ID,
    uir.Molecular_Formula,
    uir.INCHI_Key,
    uir.SMILES,
    uir.UNII_TYPE,
    uir.UU_ID,
    uir.Substance_Type
from {{ ref('stg_unique_ingredient_identifier_records') }} uir