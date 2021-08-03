# MailSlurpClient::BulkSendEmailOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inbox_ids** | **Array&lt;String&gt;** | Inboxes to send the email from | [optional] 
**send_email_options** | [**SendEmailOptions**](SendEmailOptions) |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::BulkSendEmailOptions.new(inbox_ids: null,
                                 send_email_options: null)
```


