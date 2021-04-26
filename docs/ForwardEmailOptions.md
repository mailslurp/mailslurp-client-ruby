# MailSlurpClient::ForwardEmailOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bcc** | **Array&lt;String&gt;** | Optional bcc recipients | [optional] 
**cc** | **Array&lt;String&gt;** | Optional cc recipients | [optional] 
**subject** | **String** | Subject for forwarded email | [optional] 
**to** | **Array&lt;String&gt;** | To recipients for forwarded email | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ForwardEmailOptions.new(bcc: null,
                                 cc: null,
                                 subject: null,
                                 to: null)
```


