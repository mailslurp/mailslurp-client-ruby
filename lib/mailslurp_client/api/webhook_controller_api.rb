=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 

The version of the OpenAPI document: 6.5.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module MailSlurpClient
  class WebhookControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Attach a WebHook URL to an inbox
    # Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
    # @param inbox_id [String] inboxId
    # @param webhook_options [CreateWebhookOptions] webhookOptions
    # @param [Hash] opts the optional parameters
    # @return [WebhookDto]
    def create_webhook(inbox_id, webhook_options, opts = {})
      data, _status_code, _headers = create_webhook_with_http_info(inbox_id, webhook_options, opts)
      data
    end

    # Attach a WebHook URL to an inbox
    # Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
    # @param inbox_id [String] inboxId
    # @param webhook_options [CreateWebhookOptions] webhookOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookDto, Integer, Hash)>] WebhookDto data, response status code and response headers
    def create_webhook_with_http_info(inbox_id, webhook_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookControllerApi.create_webhook ...'
      end
      # verify the required parameter 'inbox_id' is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_id' when calling WebhookControllerApi.create_webhook"
      end
      # verify the required parameter 'webhook_options' is set
      if @api_client.config.client_side_validation && webhook_options.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_options' when calling WebhookControllerApi.create_webhook"
      end
      # resource path
      local_var_path = '/inboxes/{inboxId}/webhooks'.sub('{' + 'inboxId' + '}', CGI.escape(inbox_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(webhook_options) 

      # return_type
      return_type = opts[:return_type] || 'WebhookDto' 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookControllerApi#create_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete and disable a Webhook for an Inbox
    # @param inbox_id [String] inboxId
    # @param webhook_id [String] webhookId
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_webhook(inbox_id, webhook_id, opts = {})
      delete_webhook_with_http_info(inbox_id, webhook_id, opts)
      nil
    end

    # Delete and disable a Webhook for an Inbox
    # @param inbox_id [String] inboxId
    # @param webhook_id [String] webhookId
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_webhook_with_http_info(inbox_id, webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookControllerApi.delete_webhook ...'
      end
      # verify the required parameter 'inbox_id' is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_id' when calling WebhookControllerApi.delete_webhook"
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhookControllerApi.delete_webhook"
      end
      # resource path
      local_var_path = '/inboxes/{inboxId}/webhooks/{webhookId}'.sub('{' + 'inboxId' + '}', CGI.escape(inbox_id.to_s)).sub('{' + 'webhookId' + '}', CGI.escape(webhook_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookControllerApi#delete_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get results for all webhooks
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in list pagination (default to 0)
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in list pagination (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @return [PageWebhookResult]
    def get_all_webhook_results(opts = {})
      data, _status_code, _headers = get_all_webhook_results_with_http_info(opts)
      data
    end

    # Get results for all webhooks
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in list pagination
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in list pagination
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @return [Array<(PageWebhookResult, Integer, Hash)>] PageWebhookResult data, response status code and response headers
    def get_all_webhook_results_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookControllerApi.get_all_webhook_results ...'
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/webhooks/results'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'searchFilter'] = opts[:'search_filter'] if !opts[:'search_filter'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PageWebhookResult' 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookControllerApi#get_all_webhook_results\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Webhooks Paginated
    # List webhooks in paginated form. Allows for page index, page size, and sort direction.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in list pagination (default to 0)
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in list pagination (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @return [PageWebhookProjection]
    def get_all_webhooks(opts = {})
      data, _status_code, _headers = get_all_webhooks_with_http_info(opts)
      data
    end

    # List Webhooks Paginated
    # List webhooks in paginated form. Allows for page index, page size, and sort direction.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in list pagination
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in list pagination
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @return [Array<(PageWebhookProjection, Integer, Hash)>] PageWebhookProjection data, response status code and response headers
    def get_all_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookControllerApi.get_all_webhooks ...'
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/webhooks/paginated'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'searchFilter'] = opts[:'search_filter'] if !opts[:'search_filter'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PageWebhookProjection' 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookControllerApi#get_all_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get paginated webhooks for an Inbox
    # @param inbox_id [String] inboxId
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in list pagination (default to 0)
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in list pagination (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @return [PageWebhookProjection]
    def get_inbox_webhooks_paginated(inbox_id, opts = {})
      data, _status_code, _headers = get_inbox_webhooks_paginated_with_http_info(inbox_id, opts)
      data
    end

    # Get paginated webhooks for an Inbox
    # @param inbox_id [String] inboxId
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in list pagination
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in list pagination
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @return [Array<(PageWebhookProjection, Integer, Hash)>] PageWebhookProjection data, response status code and response headers
    def get_inbox_webhooks_paginated_with_http_info(inbox_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookControllerApi.get_inbox_webhooks_paginated ...'
      end
      # verify the required parameter 'inbox_id' is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_id' when calling WebhookControllerApi.get_inbox_webhooks_paginated"
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/inboxes/{inboxId}/webhooks/paginated'.sub('{' + 'inboxId' + '}', CGI.escape(inbox_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'searchFilter'] = opts[:'search_filter'] if !opts[:'search_filter'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PageWebhookProjection' 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookControllerApi#get_inbox_webhooks_paginated\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :event_name eventName
    # @return [AbstractWebhookPayload]
    def get_test_webhook_payload(opts = {})
      data, _status_code, _headers = get_test_webhook_payload_with_http_info(opts)
      data
    end

    # Get test webhook payload example. Response content depends on eventName passed. Uses &#x60;EMAIL_RECEIVED&#x60; as default.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :event_name eventName
    # @return [Array<(AbstractWebhookPayload, Integer, Hash)>] AbstractWebhookPayload data, response status code and response headers
    def get_test_webhook_payload_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookControllerApi.get_test_webhook_payload ...'
      end
      allowable_values = ["EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT"]
      if @api_client.config.client_side_validation && opts[:'event_name'] && !allowable_values.include?(opts[:'event_name'])
        fail ArgumentError, "invalid value for \"event_name\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/webhooks/test'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'eventName'] = opts[:'event_name'] if !opts[:'event_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'AbstractWebhookPayload' 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookControllerApi#get_test_webhook_payload\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get webhook test payload for new attachment event
    # @param [Hash] opts the optional parameters
    # @return [WebhookNewAttachmentPayload]
    def get_test_webhook_payload_new_attachment(opts = {})
      data, _status_code, _headers = get_test_webhook_payload_new_attachment_with_http_info(opts)
      data
    end

    # Get webhook test payload for new attachment event
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookNewAttachmentPayload, Integer, Hash)>] WebhookNewAttachmentPayload data, response status code and response headers
    def get_test_webhook_payload_new_attachment_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookControllerApi.get_test_webhook_payload_new_attachment ...'
      end
      # resource path
      local_var_path = '/webhooks/test/new-attachment-payload'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'WebhookNewAttachmentPayload' 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookControllerApi#get_test_webhook_payload_new_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get webhook test payload for new contact event
    # @param [Hash] opts the optional parameters
    # @return [WebhookNewContactPayload]
    def get_test_webhook_payload_new_contact(opts = {})
      data, _status_code, _headers = get_test_webhook_payload_new_contact_with_http_info(opts)
      data
    end

    # Get webhook test payload for new contact event
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookNewContactPayload, Integer, Hash)>] WebhookNewContactPayload data, response status code and response headers
    def get_test_webhook_payload_new_contact_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookControllerApi.get_test_webhook_payload_new_contact ...'
      end
      # resource path
      local_var_path = '/webhooks/test/new-contact-payload'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'WebhookNewContactPayload' 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookControllerApi#get_test_webhook_payload_new_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get webhook test payload for new email event
    # @param [Hash] opts the optional parameters
    # @return [WebhookNewEmailPayload]
    def get_test_webhook_payload_new_email(opts = {})
      data, _status_code, _headers = get_test_webhook_payload_new_email_with_http_info(opts)
      data
    end

    # Get webhook test payload for new email event
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookNewEmailPayload, Integer, Hash)>] WebhookNewEmailPayload data, response status code and response headers
    def get_test_webhook_payload_new_email_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookControllerApi.get_test_webhook_payload_new_email ...'
      end
      # resource path
      local_var_path = '/webhooks/test/new-email-payload'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'WebhookNewEmailPayload' 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookControllerApi#get_test_webhook_payload_new_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a webhook for an Inbox
    # @param webhook_id [String] webhookId
    # @param [Hash] opts the optional parameters
    # @return [WebhookDto]
    def get_webhook(webhook_id, opts = {})
      data, _status_code, _headers = get_webhook_with_http_info(webhook_id, opts)
      data
    end

    # Get a webhook for an Inbox
    # @param webhook_id [String] webhookId
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookDto, Integer, Hash)>] WebhookDto data, response status code and response headers
    def get_webhook_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookControllerApi.get_webhook ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhookControllerApi.get_webhook"
      end
      # resource path
      local_var_path = '/webhooks/{webhookId}'.sub('{' + 'webhookId' + '}', CGI.escape(webhook_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'WebhookDto' 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookControllerApi#get_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a webhook result for a webhook
    # @param webhook_result_id [String] Webhook Result ID
    # @param [Hash] opts the optional parameters
    # @return [WebhookResultEntity]
    def get_webhook_result(webhook_result_id, opts = {})
      data, _status_code, _headers = get_webhook_result_with_http_info(webhook_result_id, opts)
      data
    end

    # Get a webhook result for a webhook
    # @param webhook_result_id [String] Webhook Result ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookResultEntity, Integer, Hash)>] WebhookResultEntity data, response status code and response headers
    def get_webhook_result_with_http_info(webhook_result_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookControllerApi.get_webhook_result ...'
      end
      # verify the required parameter 'webhook_result_id' is set
      if @api_client.config.client_side_validation && webhook_result_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_result_id' when calling WebhookControllerApi.get_webhook_result"
      end
      # resource path
      local_var_path = '/webhooks/results/{webhookResultId}'.sub('{' + 'webhookResultId' + '}', CGI.escape(webhook_result_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'WebhookResultEntity' 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookControllerApi#get_webhook_result\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a webhook results for a webhook
    # @param webhook_id [String] ID of webhook to get results for
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in list pagination (default to 0)
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in list pagination (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @return [PageWebhookResult]
    def get_webhook_results(webhook_id, opts = {})
      data, _status_code, _headers = get_webhook_results_with_http_info(webhook_id, opts)
      data
    end

    # Get a webhook results for a webhook
    # @param webhook_id [String] ID of webhook to get results for
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in list pagination
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in list pagination
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @return [Array<(PageWebhookResult, Integer, Hash)>] PageWebhookResult data, response status code and response headers
    def get_webhook_results_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookControllerApi.get_webhook_results ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhookControllerApi.get_webhook_results"
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/webhooks/{webhookId}/results'.sub('{' + 'webhookId' + '}', CGI.escape(webhook_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'searchFilter'] = opts[:'search_filter'] if !opts[:'search_filter'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PageWebhookResult' 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookControllerApi#get_webhook_results\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all webhooks for an Inbox
    # @param inbox_id [String] inboxId
    # @param [Hash] opts the optional parameters
    # @return [Array<WebhookDto>]
    def get_webhooks(inbox_id, opts = {})
      data, _status_code, _headers = get_webhooks_with_http_info(inbox_id, opts)
      data
    end

    # Get all webhooks for an Inbox
    # @param inbox_id [String] inboxId
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<WebhookDto>, Integer, Hash)>] Array<WebhookDto> data, response status code and response headers
    def get_webhooks_with_http_info(inbox_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookControllerApi.get_webhooks ...'
      end
      # verify the required parameter 'inbox_id' is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_id' when calling WebhookControllerApi.get_webhooks"
      end
      # resource path
      local_var_path = '/inboxes/{inboxId}/webhooks'.sub('{' + 'inboxId' + '}', CGI.escape(inbox_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<WebhookDto>' 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookControllerApi#get_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send webhook test data
    # @param webhook_id [String] webhookId
    # @param [Hash] opts the optional parameters
    # @return [WebhookTestResult]
    def send_test_data(webhook_id, opts = {})
      data, _status_code, _headers = send_test_data_with_http_info(webhook_id, opts)
      data
    end

    # Send webhook test data
    # @param webhook_id [String] webhookId
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookTestResult, Integer, Hash)>] WebhookTestResult data, response status code and response headers
    def send_test_data_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookControllerApi.send_test_data ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhookControllerApi.send_test_data"
      end
      # resource path
      local_var_path = '/webhooks/{webhookId}/test'.sub('{' + 'webhookId' + '}', CGI.escape(webhook_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'WebhookTestResult' 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookControllerApi#send_test_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
