# MailSlurpClient::Bounce

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bounce_mta** | **String** |  | [optional] 
**bounce_recipients** | **Array&lt;String&gt;** |  | [optional] 
**bounce_sub_type** | **String** |  | [optional] 
**bounce_type** | **String** |  | [optional] 
**created_at** | **DateTime** |  | 
**id** | **String** |  | [optional] 
**notification_type** | **String** |  | 
**sender** | **String** |  | 
**sent_to_recipients** | **Array&lt;String&gt;** |  | [optional] 
**updated_at** | **DateTime** |  | 
**user_id** | **String** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::Bounce.new(bounce_mta: null,
                                 bounce_recipients: null,
                                 bounce_sub_type: null,
                                 bounce_type: null,
                                 created_at: null,
                                 id: null,
                                 notification_type: null,
                                 sender: null,
                                 sent_to_recipients: null,
                                 updated_at: null,
                                 user_id: null)
```


