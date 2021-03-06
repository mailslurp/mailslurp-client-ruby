# MailSlurpClient::WaitForConditions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **Integer** | Number of results that should match conditions. Either exactly or at least this amount based on the &#x60;countType&#x60;. If count condition is not met and the timeout has not been reached the &#x60;waitFor&#x60; method will retry the operation. | [optional] 
**count_type** | **String** | How should the found count be compared to the expected count. | [optional] 
**inbox_id** | **String** | ID of inbox to search within and apply conditions to. Essentially filtering the emails found to give a count. | [optional] 
**matches** | [**Array&lt;MatchOption&gt;**](MatchOption) | Conditions that should be matched for an email to qualify for results. Each condition will be applied in order to each email within an inbox to filter a result list of matching emails you are waiting for. | [optional] 
**sort_direction** | **String** | Direction to sort matching emails by created time | [optional] 
**timeout** | **Integer** | Max time in milliseconds to retry the &#x60;waitFor&#x60; operation until conditions are met. | [optional] 
**unread_only** | **Boolean** | Apply conditions only to **unread** emails. All emails begin with &#x60;read&#x3D;false&#x60;. An email is marked &#x60;read&#x3D;true&#x60; when an &#x60;EmailDto&#x60; representation of it has been returned to the user at least once. For example you have called &#x60;getEmail&#x60; or &#x60;waitForLatestEmail&#x60; etc., or you have viewed the email in the dashboard.  | [optional] 

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


