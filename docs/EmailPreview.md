# MailSlurpClient::EmailPreview

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **Array&lt;String&gt;** |  | [optional] 
**bcc** | **Array&lt;String&gt;** |  | [optional] 
**cc** | **Array&lt;String&gt;** |  | [optional] 
**created** | **DateTime** |  | 
**created_at** | **DateTime** |  | 
**id** | **String** | ID of the Email. | [optional] 
**read** | **Boolean** |  | [optional] 
**subject** | **String** |  | [optional] 
**to** | **Array&lt;String&gt;** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::EmailPreview.new(attachments: null,
                                 bcc: null,
                                 cc: null,
                                 created: null,
                                 created_at: null,
                                 id: null,
                                 read: null,
                                 subject: null,
                                 to: null)
```


