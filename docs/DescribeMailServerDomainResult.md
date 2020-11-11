# MailSlurpClient::DescribeMailServerDomainResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **String** |  | 
**message** | **String** |  | [optional] 
**mx_records** | [**Array&lt;NameServerRecord&gt;**](NameServerRecord.md) |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::DescribeMailServerDomainResult.new(domain: null,
                                 message: null,
                                 mx_records: null)
```


