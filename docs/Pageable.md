# MailSlurpClient::Pageable

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**offset** | **Integer** |  | [optional] 
**page_number** | **Integer** |  | [optional] 
**page_size** | **Integer** |  | [optional] 
**paged** | **Boolean** |  | [optional] 
**sort** | [**Sort**](Sort) |  | [optional] 
**unpaged** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::Pageable.new(offset: null,
                                 page_number: null,
                                 page_size: null,
                                 paged: null,
                                 sort: null,
                                 unpaged: null)
```


