# MosquitoAlert::Taxon


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [readonly] 
**name** | **character** |  | [Max. length: 32] 
**common_name** | **character** |  | [optional] [Max. length: 64] 
**rank** | **character** |  | [Enum: [class, order, family, genus, subgenus, species_complex, species]] 
**italicize** | **character** | Display the name in italics when rendering. | [readonly] 
**is_relevant** | **character** | Indicates if this taxon is relevant for the application. Will be shown first and will set task to conflict if final taxon is not this. | 


