# MailSlurpClient::DNSLookupOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **String** | List of record types you wish to query such as MX, DNS, TXT, NS, A etc. | 
**record_types** | **Array&lt;String&gt;** | List of record types you wish to query such as MX, DNS, TXT, NS, A etc. | 
**omit_final_dns_dot** | **Boolean** | Optionally control whether to omit the final dot in full DNS name values. | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::DNSLookupOptions.new(hostname: null,
                                 record_types: null,
                                 omit_final_dns_dot: null)
```


