# MailSlurpClient::AttachmentProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**content_length** | **Integer** | Content length of attachment in bytes | [optional] 
**user_id** | **String** |  | 
**attachment_id** | **String** | Attachment ID | 
**updated_at** | **DateTime** |  | 
**created_at** | **DateTime** |  | 
**content_type** | **String** | Content type of attachment. | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::AttachmentProjection.new(name: null,
                                 content_length: null,
                                 user_id: null,
                                 attachment_id: null,
                                 updated_at: null,
                                 created_at: null,
                                 content_type: image/png)
```


