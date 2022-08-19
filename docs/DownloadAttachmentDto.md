# MailSlurpClient::DownloadAttachmentDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base64_file_contents** | **String** | Base64 encoded string of attachment bytes. Decode the base64 encoded string to get the raw contents. If the file has a content type such as &#x60;text/html&#x60; you can read the contents directly by converting it to string using &#x60;utf-8&#x60; encoding. | 
**content_type** | **String** | Content type of attachment. Examples are &#x60;image/png&#x60;, &#x60;application/msword&#x60;, &#x60;text/csv&#x60; etc. | 
**size_bytes** | **Integer** | Size in bytes of attachment content | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::DownloadAttachmentDto.new(base64_file_contents: null,
                                 content_type: null,
                                 size_bytes: null)
```


