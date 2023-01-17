# MailSlurpClient::WaitForSingleSmsOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**phone_number_id** | **String** |  | 
**timeout** | **Integer** |  | 
**unread_only** | **Boolean** |  | [optional] 
**before** | **DateTime** |  | [optional] 
**since** | **DateTime** |  | [optional] 
**sort_direction** | **String** |  | [optional] 
**delay** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WaitForSingleSmsOptions.new(phone_number_id: null,
                                 timeout: null,
                                 unread_only: null,
                                 before: null,
                                 since: null,
                                 sort_direction: null,
                                 delay: null)
```


