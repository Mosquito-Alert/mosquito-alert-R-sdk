# MosquitoAlert::CreatePhotoPrediction


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**photo** | [**SimplePhoto**](SimplePhoto.md) |  | [readonly] 
**bbox** | [**BoundingBox**](BoundingBox.md) |  | 
**insect_confidence** | **numeric** | Insect confidence | [Max: 1.0] [Min: 0.0] 
**predicted_class** | **character** |  | [Enum: [ae_albopictus, ae_aegypti, ae_japonicus, ae_koreicus, culex, anopheles, culiseta, other_species, not_sure]] 
**threshold_deviation** | **numeric** |  | [Max: 1.0] [Min: -1.0] 
**is_decisive** | **character** | Indicates if this prediction can close the identification task. | [optional] 
**scores** | [**PredictionScore**](PredictionScore.md) |  | 
**classifier_version** | **character** |  | [Enum: [v2023.1, v2024.1, v2025.1, v2025.2, v2025.3, v2025.4]] 
**created_at** | **character** |  | [readonly] 
**updated_at** | **character** |  | [readonly] 


