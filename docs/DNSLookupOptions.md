# MailSlurpClient::DNSLookupOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **String** | List of record types you wish to query such as MX, DNS, TXT, NS, A etc. | [optional] 
**omit_final_dns_dot** | **Boolean** | Optionally control whether to omit the final dot in full DNS name values. | [optional] 
**record_types** | **Array&lt;String&gt;** | List of record types you wish to query such as MX, DNS, TXT, NS, A etc. | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::DNSLookupOptions.new(hostname: null,
                                 omit_final_dns_dot: null,
                                 record_types: null)
```


