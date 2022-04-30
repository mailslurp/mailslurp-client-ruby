# MailSlurpClient::ReplyToAliasEmailOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**body** | **String** | Body of the reply email you want to send | 
**is_html** | **Boolean** | Is the reply HTML | 
**charset** | **String** | The charset that your message should be sent with. Optional. Default is UTF-8 | [optional] 
**attachments** | **Array&lt;String&gt;** | List of uploaded attachments to send with the reply. Optional. | [optional] 
**template_variables** | **Hash&lt;String, Object&gt;** | Template variables if using a template | [optional] 
**template** | **String** | Template ID to use instead of body. Will use template variable map to fill defined variable slots. | [optional] 
**send_strategy** | **String** | How an email should be sent based on its recipients | [optional] 
**use_inbox_name** | **Boolean** | Optionally use inbox name as display name for sender email address | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ReplyToAliasEmailOptions.new(body: null,
                                 is_html: null,
                                 charset: null,
                                 attachments: null,
                                 template_variables: null,
                                 template: null,
                                 send_strategy: null,
                                 use_inbox_name: null)
```


