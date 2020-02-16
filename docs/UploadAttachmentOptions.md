# MailSlurpClient::UploadAttachmentOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base64_contents** | **String** | Base64 encoded string of file contents | [optional] 
**content_type** | **String** | Optional contentType for file. For instance application/pdf | [optional] 
**filename** | **String** | Optional filename to save upload with | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::UploadAttachmentOptions.new(base64_contents: null,
                                 content_type: null,
                                 filename: null)
```


