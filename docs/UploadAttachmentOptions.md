# MailSlurpClient::UploadAttachmentOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content_type** | **String** | Optional contentType for file. For instance &#x60;application/pdf&#x60; | [optional] 
**filename** | **String** | Optional filename to save upload with. Will be the name that is shown in email clients | [optional] 
**base64_contents** | **String** | Base64 encoded string of file contents. Typically this means reading the bytes or string content of a file and then converting that to a base64 encoded string. For examples of how to do this see https://www.mailslurp.com/guides/base64-file-uploads/ | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::UploadAttachmentOptions.new(content_type: null,
                                 filename: null,
                                 base64_contents: null)
```


