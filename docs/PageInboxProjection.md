# MailSlurpClient::PageInboxProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**Array&lt;InboxPreview&gt;**](InboxPreview) |  | [optional] 
**pageable** | [**PageableObject**](PageableObject) |  | [optional] 
**total** | **Integer** |  | [optional] 
**total_elements** | **Integer** |  | [optional] 
**total_pages** | **Integer** |  | [optional] 
**last** | **Boolean** |  | [optional] 
**size** | **Integer** |  | [optional] 
**number** | **Integer** |  | [optional] 
**sort** | [**Sort**](Sort) |  | [optional] 
**number_of_elements** | **Integer** |  | [optional] 
**first** | **Boolean** |  | [optional] 
**empty** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::PageInboxProjection.new(content: null,
                                 pageable: null,
                                 total: null,
                                 total_elements: null,
                                 total_pages: null,
                                 last: null,
                                 size: null,
                                 number: null,
                                 sort: null,
                                 number_of_elements: null,
                                 first: null,
                                 empty: null)
```


