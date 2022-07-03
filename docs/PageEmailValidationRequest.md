# MailSlurpClient::PageEmailValidationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**Array&lt;EmailValidationRequest&gt;**](EmailValidationRequest) |  | [optional] 
**pageable** | [**PageableObject**](PageableObject) |  | [optional] 
**total** | **Integer** |  | [optional] 
**last** | **Boolean** |  | [optional] 
**total_pages** | **Integer** |  | [optional] 
**total_elements** | **Integer** |  | [optional] 
**size** | **Integer** |  | [optional] 
**number** | **Integer** |  | [optional] 
**sort** | [**Sort**](Sort) |  | [optional] 
**first** | **Boolean** |  | [optional] 
**number_of_elements** | **Integer** |  | [optional] 
**empty** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::PageEmailValidationRequest.new(content: null,
                                 pageable: null,
                                 total: null,
                                 last: null,
                                 total_pages: null,
                                 total_elements: null,
                                 size: null,
                                 number: null,
                                 sort: null,
                                 first: null,
                                 number_of_elements: null,
                                 empty: null)
```


