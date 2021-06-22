# MailSlurpClient::PageSentEmailProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**Array&lt;SentEmailProjection&gt;**](SentEmailProjection) | Collection of items | [optional] 
**empty** | **Boolean** |  | [optional] 
**first** | **Boolean** |  | [optional] 
**last** | **Boolean** |  | [optional] 
**number** | **Integer** | Page number starting at 0 | [optional] 
**number_of_elements** | **Integer** | Number of items returned | [optional] 
**pageable** | [**Pageable**](Pageable) |  | [optional] 
**size** | **Integer** | Size of page requested | [optional] 
**sort** | [**Sort**](Sort) |  | [optional] 
**total_elements** | **Integer** | Total number of items available for querying | [optional] 
**total_pages** | **Integer** | Total number of pages available | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::PageSentEmailProjection.new(content: null,
                                 empty: null,
                                 first: null,
                                 last: null,
                                 number: null,
                                 number_of_elements: null,
                                 pageable: null,
                                 size: null,
                                 sort: null,
                                 total_elements: null,
                                 total_pages: null)
```


