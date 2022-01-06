# MailSlurpClient::WaitForConditions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inbox_id** | **String** |  | [optional] 
**count** | **Integer** | Number of results that should match conditions. Either exactly or at least this amount based on the &#x60;countType&#x60;. If count condition is not met and the timeout has not been reached the &#x60;waitFor&#x60; method will retry the operation. | [optional] 
**delay_timeout** | **Integer** | Max time in milliseconds to wait between retries if a &#x60;timeout&#x60; is specified. | [optional] 
**timeout** | **Integer** | Max time in milliseconds to retry the &#x60;waitFor&#x60; operation until conditions are met. | 
**unread_only** | **Boolean** | Apply conditions only to **unread** emails. All emails begin with &#x60;read&#x3D;false&#x60;. An email is marked &#x60;read&#x3D;true&#x60; when an &#x60;EmailDto&#x60; representation of it has been returned to the user at least once. For example you have called &#x60;getEmail&#x60; or &#x60;waitForLatestEmail&#x60; etc., or you have viewed the email in the dashboard. | [optional] 
**count_type** | **String** | How result size should be compared with the expected size. Exactly or at-least matching result? | [optional] 
**matches** | [**Array&lt;MatchOption&gt;**](MatchOption) |  | [optional] 
**sort_direction** | **String** |  | [optional] 
**since** | **DateTime** |  | [optional] 
**before** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WaitForConditions.new(inbox_id: null,
                                 count: null,
                                 delay_timeout: null,
                                 timeout: null,
                                 unread_only: null,
                                 count_type: null,
                                 matches: null,
                                 sort_direction: null,
                                 since: null,
                                 before: null)
```


