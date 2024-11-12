# MosquitoAlert::ObservationPrediction


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ref_photo_uuid** | **character** | The selected photo whose prediction represents the observation as the best classification result. | 
**insect_confidence** | **numeric** |  | [readonly] [Max: 1] [Min: 0] 
**predicted_class** | **character** |  | [readonly] [Enum: [ae_albopictus, ae_aegypti, ae_japonicus, ae_koreicus, culex, anopheles, culiseta, other_species, not_sure]] 
**predicted_class_display** | **character** |  | [readonly] [Enum: [Aedes albopictus, Aedes aegypti, Aedes japonicus, Aedes koreicus, Culex (s.p), Anopheles (s.p.), Culiseta (s.p.), Ohter species, Unidentifiable]] 
**is_executive_validation** | **character** | Whether if the photo prediction will be used as an executive validation for the report. | [readonly] [default to FALSE] 
**created_at** | **character** |  | [readonly] 
**updated_at** | **character** |  | [readonly] 


