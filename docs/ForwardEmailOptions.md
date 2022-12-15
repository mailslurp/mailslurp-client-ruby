# MailSlurpClient::ForwardEmailOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | **Array&lt;String&gt;** | To recipients for forwarded email | 
**subject** | **String** | Subject for forwarded email | [optional] 
**cc** | **Array&lt;String&gt;** | Optional cc recipients | [optional] 
**bcc** | **Array&lt;String&gt;** | Optional bcc recipients | [optional] 
**from** | **String** | Optional from override | [optional] 
**use_inbox_name** | **Boolean** | Optionally use inbox name as display name for sender email address | [optional] 
**filter_bounced_recipients** | **Boolean** | Filter recipients to remove any bounced recipients from to, bcc, and cc before sending | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ForwardEmailOptions.new(to: null,
                                 subject: null,
                                 cc: null,
                                 bcc: null,
                                 from: null,
                                 use_inbox_name: null,
                                 filter_bounced_recipients: null)
```


