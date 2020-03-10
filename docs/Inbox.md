# MailSlurpClient::Inbox

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | When was the inbox created | [optional] 
**description** | **String** | Optional description of an inbox for labelling purposes | [optional] 
**email_address** | **String** | The inbox&#39;s email address. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints. | [optional] 
**expires_at** | **DateTime** | When, if ever, will the inbox expire and be deleted. If null then this inbox is permanent and the emails in it won&#39;t be deleted. | [optional] 
**favourite** | **BOOLEAN** | Is the inbox favourited | [optional] 
**id** | **String** | ID of the inbox | [optional] 
**name** | **String** | Optional name of the inbox. Displayed in the dashboard for easier search | [optional] 
**tags** | **Array&lt;String&gt;** | Tags that inbox has been tagged with | [optional] 
**user_id** | **String** | ID of user that inbox belongs to | [optional] 


