# MailSlurpClient::PageableObject

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**offset** | **Integer** |  | [optional] 
**sort** | [**Sort**](Sort) |  | [optional] 
**paged** | **Boolean** |  | [optional] 
**unpaged** | **Boolean** |  | [optional] 
**page_number** | **Integer** |  | [optional] 
**page_size** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::PageableObject.new(offset: null,
                                 sort: null,
                                 paged: null,
                                 unpaged: null,
                                 page_number: null,
                                 page_size: null)
```


