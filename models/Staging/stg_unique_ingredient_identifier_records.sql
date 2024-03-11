{{ config(materialized='view') }}

select
    Unique_Ingredient_Identifier,
    Preferred_Term,
    Registry_Number,
    European_Chemicals_Number,
    NCI_Thesaurus_Code,
    RXNORM_Ingredient_Code,
    PubChem_Compound_Id,
    ITIS_Id,
    NCBI_Id,
    USDA_Plants_Id,
    GRIN_Id,
    MPNS_Id,
    INN_Id,
    USAN_ID,
    Molecular_Formula,
    INCHI_Key,
    SMILES,
    UNII_TYPE,
    UU_ID,
    Substance_Type
from {{ source('unique_ingredient_identifier', 'unique_ingredient_identifier_records') }}