# MailSlurpClient::BouncedEmailDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**user_id** | **String** |  | 
**notification_type** | **String** |  | 
**sent_to_recipients** | **Array&lt;String&gt;** |  | [optional] 
**sender** | **String** |  | 
**bounce_mta** | **String** |  | [optional] 
**bounce_type** | **String** |  | [optional] 
**bounce_recipients** | **Array&lt;String&gt;** |  | [optional] 
**bounce_sub_type** | **String** |  | [optional] 
**created_at** | **DateTime** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::BouncedEmailDto.new(id: null,
                                 user_id: null,
                                 notification_type: null,
                                 sent_to_recipients: null,
                                 sender: null,
                                 bounce_mta: null,
                                 bounce_type: null,
                                 bounce_recipients: null,
                                 bounce_sub_type: null,
                                 created_at: null)
```


