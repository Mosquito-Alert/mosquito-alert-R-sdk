# MosquitoAlert::IdentificationTaskResult


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source** | **character** |  | [readonly] [Enum: [expert, ai]] 
**taxon** | [**SimpleTaxon**](SimpleTaxon.md) |  | [readonly] 
**is_high_confidence** | **character** |  | [readonly] 
**confidence** | **numeric** |  | [readonly] [Max: 1] [Min: 0] 
**confidence_label** | **character** |  | [readonly] 
**uncertainty** | **numeric** |  | [readonly] [Max: 1] [Min: 0] 
**agreement** | **numeric** |  | [readonly] [Max: 1] [Min: 0] 


