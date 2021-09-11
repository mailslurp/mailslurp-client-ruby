# MailSlurpClient::PageInboxRulesetDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**Array&lt;InboxRulesetDto&gt;**](InboxRulesetDto) |  | [optional] 
**empty** | **Boolean** |  | [optional] 
**first** | **Boolean** |  | [optional] 
**last** | **Boolean** |  | [optional] 
**number** | **Integer** |  | [optional] 
**number_of_elements** | **Integer** |  | [optional] 
**pageable** | [**Pageable**](Pageable) |  | [optional] 
**size** | **Integer** |  | [optional] 
**sort** | [**Sort**](Sort) |  | [optional] 
**total_elements** | **Integer** |  | [optional] 
**total_pages** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::PageInboxRulesetDto.new(content: null,
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


