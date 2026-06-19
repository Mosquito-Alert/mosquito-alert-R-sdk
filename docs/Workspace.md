# MosquitoAlert::Workspace


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [readonly] 
**name** | **character** |  | [optional] [Max. length: 255] 
**country** | [**Country**](Country.md) |  | [readonly] 
**memberships** | [**array[WorkspaceMembership]**](WorkspaceMembership.md) |  | [readonly] 
**is_public** | **character** | Whether the results of the workspace are visible to the public. | [optional] 
**supervisor_exclusivity_days** | **integer** | Number of days that a identification tasks in the queue is exclusively available to the supervisors. | [optional] [Max: 32767] [Min: 0] 
**updated_at** | **character** |  | [readonly] 


