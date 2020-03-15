# MailSlurpClient::WaitForConditions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **Integer** | Number of results that should match conditions | [optional] 
**count_type** | **String** | Should exactly count number of results be returned or at least that many. | [optional] 
**inbox_id** | **String** | Inbox to search within | [optional] 
**matches** | [**Array&lt;MatchOption&gt;**](MatchOption.md) | Conditions that should be matched | [optional] 
**sort_direction** | **String** | Direction to sort matching emails by created time | [optional] 
**timeout** | **Integer** | Max time in milliseconds to wait until conditions are met | [optional] 
**unread_only** | **Boolean** | Apply only to unread emails | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WaitForConditions.new(count: null,
                                 count_type: null,
                                 inbox_id: null,
                                 matches: null,
                                 sort_direction: null,
                                 timeout: null,
                                 unread_only: null)
```


