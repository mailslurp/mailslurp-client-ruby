# MailSlurpClient::AttachmentProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**content_length** | **Integer** | Content length of attachment in bytes | [optional] 
**content_type** | **String** | Content type of attachment. | [optional] 
**attachment_id** | **String** | Attachment ID | 
**user_id** | **String** |  | 
**created_at** | **DateTime** |  | 
**updated_at** | **DateTime** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::AttachmentProjection.new(name: null,
                                 content_length: null,
                                 content_type: image/png,
                                 attachment_id: null,
                                 user_id: null,
                                 created_at: null,
                                 updated_at: null)
```


