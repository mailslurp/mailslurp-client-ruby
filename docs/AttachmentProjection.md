# MailSlurpClient::AttachmentProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachment_id** | **String** | Attachment ID | [optional] 
**content_length** | **Integer** | Content length of attachment in bytes | [optional] 
**content_type** | **String** | Content type of attachment. | [optional] 
**created_at** | **DateTime** |  | 
**name** | **String** |  | [optional] 
**updated_at** | **DateTime** |  | 
**user_id** | **String** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::AttachmentProjection.new(attachment_id: null,
                                 content_length: null,
                                 content_type: image/png,
                                 created_at: null,
                                 name: null,
                                 updated_at: null,
                                 user_id: null)
```


