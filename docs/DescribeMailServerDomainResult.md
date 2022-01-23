# MailSlurpClient::DescribeMailServerDomainResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mx_records** | [**Array&lt;NameServerRecord&gt;**](NameServerRecord) |  | 
**domain** | **String** |  | 
**message** | **String** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::DescribeMailServerDomainResult.new(mx_records: null,
                                 domain: null,
                                 message: null)
```


