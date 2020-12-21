# MailSlurpClient::DownloadAttachmentDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base64_file_contents** | **String** | Base64 encoded string of attachment bytes. Decode the base64 string to get the raw file bytes | [optional] 
**content_type** | **String** | Content type of attachment | [optional] 
**size_bytes** | **Integer** | Size in bytes of attachment | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::DownloadAttachmentDto.new(base64_file_contents: null,
                                 content_type: null,
                                 size_bytes: null)
```


