# MailSlurpClient::WaitForSmsConditions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**phone_number_id** | **String** | ID of phone number to search within and apply conditions to. Essentially filtering the SMS found to give a count. | 
**limit** | **Integer** | Limit results | [optional] 
**count** | **Integer** | Number of results that should match conditions. Either exactly or at least this amount based on the &#x60;countType&#x60;. If count condition is not met and the timeout has not been reached the &#x60;waitFor&#x60; method will retry the operation. | 
**delay_timeout** | **Integer** | Max time in milliseconds to wait between retries if a &#x60;timeout&#x60; is specified. | [optional] 
**timeout** | **Integer** | Max time in milliseconds to retry the &#x60;waitFor&#x60; operation until conditions are met. | 
**unread_only** | **Boolean** | Apply conditions only to **unread** SMS. All SMS messages begin with &#x60;read&#x3D;false&#x60;. An SMS is marked &#x60;read&#x3D;true&#x60; when an &#x60;SMS&#x60; has been returned to the user at least once. For example you have called &#x60;getSms&#x60; or &#x60;waitForSms&#x60; etc., or you have viewed the SMS in the dashboard. | [optional] 
**count_type** | **String** | How result size should be compared with the expected size. Exactly or at-least matching result? | [optional] 
**matches** | [**Array&lt;SmsMatchOption&gt;**](SmsMatchOption) | Conditions that should be matched for an SMS to qualify for results. Each condition will be applied in order to each SMS within a phone number to filter a result list of matching SMSs you are waiting for. | [optional] 
**sort_direction** | **String** | Direction to sort matching SMSs by created time | [optional] 
**since** | **DateTime** | ISO Date Time earliest time of SMS to consider. Filter for matching SMSs that were received after this date | [optional] 
**before** | **DateTime** | ISO Date Time latest time of SMS to consider. Filter for matching SMSs that were received before this date | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WaitForSmsConditions.new(phone_number_id: null,
                                 limit: null,
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


