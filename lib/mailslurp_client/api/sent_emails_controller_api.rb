=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module MailSlurpClient
  class SentEmailsControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get all sent email tracking pixels in paginated form
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in sent email tracking pixel list pagination (default to 0)
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in sent email tracking pixel list pagination (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @return [PageTrackingPixelProjection]
    def get_all_sent_tracking_pixels(opts = {})
      data, _status_code, _headers = get_all_sent_tracking_pixels_with_http_info(opts)
      data
    end

    # Get all sent email tracking pixels in paginated form
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in sent email tracking pixel list pagination
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in sent email tracking pixel list pagination
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @return [Array<(PageTrackingPixelProjection, Integer, Hash)>] PageTrackingPixelProjection data, response status code and response headers
    def get_all_sent_tracking_pixels_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SentEmailsControllerApi.get_all_sent_tracking_pixels ...'
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/sent/tracking-pixels'

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
      return_type = opts[:return_type] || 'PageTrackingPixelProjection' 

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
        @api_client.config.logger.debug "API called: SentEmailsControllerApi#get_all_sent_tracking_pixels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get sent email receipt
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @return [SentEmailDto]
    def get_sent_email(id, opts = {})
      data, _status_code, _headers = get_sent_email_with_http_info(id, opts)
      data
    end

    # Get sent email receipt
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @return [Array<(SentEmailDto, Integer, Hash)>] SentEmailDto data, response status code and response headers
    def get_sent_email_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SentEmailsControllerApi.get_sent_email ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SentEmailsControllerApi.get_sent_email"
      end
      # resource path
      local_var_path = '/sent/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'SentEmailDto' 

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
        @api_client.config.logger.debug "API called: SentEmailsControllerApi#get_sent_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get sent email HTML content
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_sent_email_html_content(id, opts = {})
      data, _status_code, _headers = get_sent_email_html_content_with_http_info(id, opts)
      data
    end

    # Get sent email HTML content
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_sent_email_html_content_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SentEmailsControllerApi.get_sent_email_html_content ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SentEmailsControllerApi.get_sent_email_html_content"
      end
      # resource path
      local_var_path = '/sent/{id}/html'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'String' 

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
        @api_client.config.logger.debug "API called: SentEmailsControllerApi#get_sent_email_html_content\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all tracking pixels for a sent email in paginated form
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in sent email tracking pixel list pagination (default to 0)
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in sent email tracking pixel list pagination (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @return [PageTrackingPixelProjection]
    def get_sent_email_tracking_pixels(id, opts = {})
      data, _status_code, _headers = get_sent_email_tracking_pixels_with_http_info(id, opts)
      data
    end

    # Get all tracking pixels for a sent email in paginated form
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in sent email tracking pixel list pagination
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in sent email tracking pixel list pagination
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @return [Array<(PageTrackingPixelProjection, Integer, Hash)>] PageTrackingPixelProjection data, response status code and response headers
    def get_sent_email_tracking_pixels_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SentEmailsControllerApi.get_sent_email_tracking_pixels ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SentEmailsControllerApi.get_sent_email_tracking_pixels"
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/sent/{id}/tracking-pixels'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'PageTrackingPixelProjection' 

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
        @api_client.config.logger.debug "API called: SentEmailsControllerApi#get_sent_email_tracking_pixels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all sent emails in paginated form
    # @param [Hash] opts the optional parameters
    # @option opts [String] :inbox_id Optional inboxId to filter sender of sent emails by
    # @option opts [Integer] :page Optional page index in inbox sent email list pagination (default to 0)
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in inbox sent email list pagination (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @return [PageSentEmailProjection]
    def get_sent_emails(opts = {})
      data, _status_code, _headers = get_sent_emails_with_http_info(opts)
      data
    end

    # Get all sent emails in paginated form
    # @param [Hash] opts the optional parameters
    # @option opts [String] :inbox_id Optional inboxId to filter sender of sent emails by
    # @option opts [Integer] :page Optional page index in inbox sent email list pagination
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in inbox sent email list pagination
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @return [Array<(PageSentEmailProjection, Integer, Hash)>] PageSentEmailProjection data, response status code and response headers
    def get_sent_emails_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SentEmailsControllerApi.get_sent_emails ...'
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/sent'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'inboxId'] = opts[:'inbox_id'] if !opts[:'inbox_id'].nil?
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
      return_type = opts[:return_type] || 'PageSentEmailProjection' 

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
        @api_client.config.logger.debug "API called: SentEmailsControllerApi#get_sent_emails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all sent organization emails in paginated form
    # @param [Hash] opts the optional parameters
    # @option opts [String] :inbox_id Optional inboxId to filter sender of sent emails by
    # @option opts [Integer] :page Optional page index in sent email list pagination (default to 0)
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in sent email list pagination (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @return [PageSentEmailProjection]
    def get_sent_organization_emails(opts = {})
      data, _status_code, _headers = get_sent_organization_emails_with_http_info(opts)
      data
    end

    # Get all sent organization emails in paginated form
    # @param [Hash] opts the optional parameters
    # @option opts [String] :inbox_id Optional inboxId to filter sender of sent emails by
    # @option opts [Integer] :page Optional page index in sent email list pagination
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in sent email list pagination
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @return [Array<(PageSentEmailProjection, Integer, Hash)>] PageSentEmailProjection data, response status code and response headers
    def get_sent_organization_emails_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SentEmailsControllerApi.get_sent_organization_emails ...'
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/sent/organization'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'inboxId'] = opts[:'inbox_id'] if !opts[:'inbox_id'].nil?
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
      return_type = opts[:return_type] || 'PageSentEmailProjection' 

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
        @api_client.config.logger.debug "API called: SentEmailsControllerApi#get_sent_organization_emails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
