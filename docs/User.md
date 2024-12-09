# MosquitoAlert::User


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **character** |  | [readonly] 
**username** | **character** |  | [readonly] 
**registration_time** | **character** | The date and time when user registered and consented to sharing data. Automatically set by server when user uploads registration. | [readonly] 
**locale** | **character** | The locale code representing the language preference selected by the user for displaying the interface text. Enter the locale following the BCP 47 standard in &#39;language&#39; or &#39;language-region&#39; format (e.g., &#39;en&#39; for English, &#39;en-US&#39; for English (United States), &#39;fr&#39; for French). The language is a two-letter ISO 639-1 code, and the region is an optional two-letter ISO 3166-1 alpha-2 code. | [optional] [Enum: [es, ca, eu, bn, sv, en, de, sq, el, gl, hu, pt, sl, it, fr, bg, ro, hr, mk, sr, lb, nl, tr, zh-CN]] 
**language_iso** | **character** | ISO 639-1 code | [readonly] 
**is_guest** | **character** |  | [readonly] 
**score** | **integer** | Global XP Score. This field is updated whenever the user asks for the score, and is only stored here. The content must equal score_v2_adult + score_v2_bite + score_v2_site | [readonly] 
**last_score_update** | **character** | Last time score was updated | [readonly] 


