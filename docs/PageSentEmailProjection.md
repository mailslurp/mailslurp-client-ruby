# MailSlurpClient::PageSentEmailProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**Array&lt;SentEmailProjection&gt;**](SentEmailProjection) | Collection of items | [optional] 
**pageable** | [**Pageable**](Pageable) |  | [optional] 
**size** | **Integer** | Size of page requested | [optional] 
**number** | **Integer** | Page number starting at 0 | [optional] 
**total_pages** | **Integer** | Total number of pages available | [optional] 
**number_of_elements** | **Integer** | Number of items returned | [optional] 
**total_elements** | **Integer** | Total number of items available for querying | [optional] 
**last** | **Boolean** |  | [optional] 
**sort** | [**Sort**](Sort) |  | [optional] 
**first** | **Boolean** |  | [optional] 
**empty** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::PageSentEmailProjection.new(content: null,
                                 pageable: null,
                                 size: null,
                                 number: null,
                                 total_pages: null,
                                 number_of_elements: null,
                                 total_elements: null,
                                 last: null,
                                 sort: null,
                                 first: null,
                                 empty: null)
```


