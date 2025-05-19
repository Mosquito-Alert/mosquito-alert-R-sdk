# MosquitoAlert::PatchedPhotoPredictionRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bbox** | [**BoundingBoxRequest**](BoundingBoxRequest.md) |  | [optional] 
**insect_confidence** | **numeric** | Insect confidence | [optional] [Max: 1.0] [Min: 0.0] 
**predicted_class** | **character** |  | [optional] [Enum: [ae_albopictus, ae_aegypti, ae_japonicus, ae_koreicus, culex, anopheles, culiseta, other_species, not_sure]] 
**threshold_deviation** | **numeric** |  | [optional] [Max: 1.0] [Min: -1.0] 
**is_decisive** | **character** | Indicates if this prediction can close the identification task. | [optional] 
**scores** | [**PredictionScoreRequest**](PredictionScoreRequest.md) |  | [optional] 
**classifier_version** | **character** |  | [optional] [Enum: [v2023.1, v2024.1, v2025.1, v2025.2, v2025.3, v2025.4]] 


