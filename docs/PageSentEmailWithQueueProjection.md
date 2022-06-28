# MailSlurpClient::PageSentEmailWithQueueProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**Array&lt;SendWithQueueResult&gt;**](SendWithQueueResult) | Collection of items | 
**pageable** | [**PageableObject**](PageableObject) |  | [optional] 
**total** | **Integer** |  | [optional] 
**size** | **Integer** | Size of page requested | 
**number** | **Integer** | Page number starting at 0 | 
**number_of_elements** | **Integer** | Number of items returned | 
**total_elements** | **Integer** | Total number of items available for querying | 
**total_pages** | **Integer** | Total number of pages available | 
**last** | **Boolean** |  | [optional] 
**sort** | [**Sort**](Sort) |  | [optional] 
**first** | **Boolean** |  | [optional] 
**empty** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::PageSentEmailWithQueueProjection.new(content: null,
                                 pageable: null,
                                 total: null,
                                 size: null,
                                 number: null,
                                 number_of_elements: null,
                                 total_elements: null,
                                 total_pages: null,
                                 last: null,
                                 sort: null,
                                 first: null,
                                 empty: null)
```

