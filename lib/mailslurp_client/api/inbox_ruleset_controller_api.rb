=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module MailSlurpClient
  class InboxRulesetControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an inbox ruleset
    # Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
    # @param create_inbox_ruleset_options [CreateInboxRulesetOptions] createInboxRulesetOptions
    # @param [Hash] opts the optional parameters
    # @option opts [String] :inbox_id Inbox id to attach ruleset to
    # @return [InboxRulesetDto]
    def create_new_inbox_ruleset(create_inbox_ruleset_options, opts = {})
      data, _status_code, _headers = create_new_inbox_ruleset_with_http_info(create_inbox_ruleset_options, opts)
      data
    end

    # Create an inbox ruleset
    # Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
    # @param create_inbox_ruleset_options [CreateInboxRulesetOptions] createInboxRulesetOptions
    # @param [Hash] opts the optional parameters
    # @option opts [String] :inbox_id Inbox id to attach ruleset to
    # @return [Array<(InboxRulesetDto, Integer, Hash)>] InboxRulesetDto data, response status code and response headers
    def create_new_inbox_ruleset_with_http_info(create_inbox_ruleset_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxRulesetControllerApi.create_new_inbox_ruleset ...'
      end
      # verify the required parameter 'create_inbox_ruleset_options' is set
      if @api_client.config.client_side_validation && create_inbox_ruleset_options.nil?
        fail ArgumentError, "Missing the required parameter 'create_inbox_ruleset_options' when calling InboxRulesetControllerApi.create_new_inbox_ruleset"
      end
      # resource path
      local_var_path = '/rulesets'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'inboxId'] = opts[:'inbox_id'] if !opts[:'inbox_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(create_inbox_ruleset_options) 

      # return_type
      return_type = opts[:return_type] || 'InboxRulesetDto' 

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
        @api_client.config.logger.debug "API called: InboxRulesetControllerApi#create_new_inbox_ruleset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an inbox ruleset
    # Delete inbox ruleset
    # @param id [String] ID of inbox ruleset
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_inbox_ruleset(id, opts = {})
      delete_inbox_ruleset_with_http_info(id, opts)
      nil
    end

    # Delete an inbox ruleset
    # Delete inbox ruleset
    # @param id [String] ID of inbox ruleset
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_inbox_ruleset_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxRulesetControllerApi.delete_inbox_ruleset ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InboxRulesetControllerApi.delete_inbox_ruleset"
      end
      # resource path
      local_var_path = '/rulesets/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: InboxRulesetControllerApi#delete_inbox_ruleset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete inbox rulesets
    # Delete inbox rulesets. Accepts optional inboxId filter.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :inbox_id Optional inbox id to attach ruleset to
    # @return [nil]
    def delete_inbox_rulesets(opts = {})
      delete_inbox_rulesets_with_http_info(opts)
      nil
    end

    # Delete inbox rulesets
    # Delete inbox rulesets. Accepts optional inboxId filter.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :inbox_id Optional inbox id to attach ruleset to
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_inbox_rulesets_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxRulesetControllerApi.delete_inbox_rulesets ...'
      end
      # resource path
      local_var_path = '/rulesets'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'inboxId'] = opts[:'inbox_id'] if !opts[:'inbox_id'].nil?

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
        @api_client.config.logger.debug "API called: InboxRulesetControllerApi#delete_inbox_rulesets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an inbox ruleset
    # Get inbox ruleset
    # @param id [String] ID of inbox ruleset
    # @param [Hash] opts the optional parameters
    # @return [InboxRulesetDto]
    def get_inbox_ruleset(id, opts = {})
      data, _status_code, _headers = get_inbox_ruleset_with_http_info(id, opts)
      data
    end

    # Get an inbox ruleset
    # Get inbox ruleset
    # @param id [String] ID of inbox ruleset
    # @param [Hash] opts the optional parameters
    # @return [Array<(InboxRulesetDto, Integer, Hash)>] InboxRulesetDto data, response status code and response headers
    def get_inbox_ruleset_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxRulesetControllerApi.get_inbox_ruleset ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InboxRulesetControllerApi.get_inbox_ruleset"
      end
      # resource path
      local_var_path = '/rulesets/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'InboxRulesetDto' 

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
        @api_client.config.logger.debug "API called: InboxRulesetControllerApi#get_inbox_ruleset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List inbox rulesets
    # List all rulesets attached to an inbox
    # @param [Hash] opts the optional parameters
    # @option opts [String] :inbox_id Optional inbox id to get rulesets from
    # @option opts [Integer] :page Optional page index in inbox ruleset list pagination (default to 0)
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in inbox ruleset list pagination (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @return [PageInboxRulesetDto]
    def get_inbox_rulesets(opts = {})
      data, _status_code, _headers = get_inbox_rulesets_with_http_info(opts)
      data
    end

    # List inbox rulesets
    # List all rulesets attached to an inbox
    # @param [Hash] opts the optional parameters
    # @option opts [String] :inbox_id Optional inbox id to get rulesets from
    # @option opts [Integer] :page Optional page index in inbox ruleset list pagination
    # @option opts [String] :search_filter Optional search filter
    # @option opts [Integer] :size Optional page size in inbox ruleset list pagination
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @return [Array<(PageInboxRulesetDto, Integer, Hash)>] PageInboxRulesetDto data, response status code and response headers
    def get_inbox_rulesets_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxRulesetControllerApi.get_inbox_rulesets ...'
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/rulesets'

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
      return_type = opts[:return_type] || 'PageInboxRulesetDto' 

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
        @api_client.config.logger.debug "API called: InboxRulesetControllerApi#get_inbox_rulesets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test an inbox ruleset
    # Test an inbox ruleset
    # @param id [String] ID of inbox ruleset
    # @param inbox_ruleset_test_options [InboxRulesetTestOptions] inboxRulesetTestOptions
    # @param [Hash] opts the optional parameters
    # @return [InboxRulesetTestResult]
    def test_inbox_ruleset(id, inbox_ruleset_test_options, opts = {})
      data, _status_code, _headers = test_inbox_ruleset_with_http_info(id, inbox_ruleset_test_options, opts)
      data
    end

    # Test an inbox ruleset
    # Test an inbox ruleset
    # @param id [String] ID of inbox ruleset
    # @param inbox_ruleset_test_options [InboxRulesetTestOptions] inboxRulesetTestOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(InboxRulesetTestResult, Integer, Hash)>] InboxRulesetTestResult data, response status code and response headers
    def test_inbox_ruleset_with_http_info(id, inbox_ruleset_test_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxRulesetControllerApi.test_inbox_ruleset ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InboxRulesetControllerApi.test_inbox_ruleset"
      end
      # verify the required parameter 'inbox_ruleset_test_options' is set
      if @api_client.config.client_side_validation && inbox_ruleset_test_options.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_ruleset_test_options' when calling InboxRulesetControllerApi.test_inbox_ruleset"
      end
      # resource path
      local_var_path = '/rulesets/{id}/test'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(inbox_ruleset_test_options) 

      # return_type
      return_type = opts[:return_type] || 'InboxRulesetTestResult' 

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
        @api_client.config.logger.debug "API called: InboxRulesetControllerApi#test_inbox_ruleset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test inbox rulesets for inbox
    # Test inbox rulesets for inbox
    # @param inbox_id [String] ID of inbox
    # @param inbox_ruleset_test_options [InboxRulesetTestOptions] inboxRulesetTestOptions
    # @param [Hash] opts the optional parameters
    # @return [InboxRulesetTestResult]
    def test_inbox_rulesets_for_inbox(inbox_id, inbox_ruleset_test_options, opts = {})
      data, _status_code, _headers = test_inbox_rulesets_for_inbox_with_http_info(inbox_id, inbox_ruleset_test_options, opts)
      data
    end

    # Test inbox rulesets for inbox
    # Test inbox rulesets for inbox
    # @param inbox_id [String] ID of inbox
    # @param inbox_ruleset_test_options [InboxRulesetTestOptions] inboxRulesetTestOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(InboxRulesetTestResult, Integer, Hash)>] InboxRulesetTestResult data, response status code and response headers
    def test_inbox_rulesets_for_inbox_with_http_info(inbox_id, inbox_ruleset_test_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxRulesetControllerApi.test_inbox_rulesets_for_inbox ...'
      end
      # verify the required parameter 'inbox_id' is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_id' when calling InboxRulesetControllerApi.test_inbox_rulesets_for_inbox"
      end
      # verify the required parameter 'inbox_ruleset_test_options' is set
      if @api_client.config.client_side_validation && inbox_ruleset_test_options.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_ruleset_test_options' when calling InboxRulesetControllerApi.test_inbox_rulesets_for_inbox"
      end
      # resource path
      local_var_path = '/rulesets'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'inboxId'] = inbox_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(inbox_ruleset_test_options) 

      # return_type
      return_type = opts[:return_type] || 'InboxRulesetTestResult' 

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

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InboxRulesetControllerApi#test_inbox_rulesets_for_inbox\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test new inbox ruleset
    # Test new inbox ruleset
    # @param test_new_inbox_ruleset_options [TestNewInboxRulesetOptions] testNewInboxRulesetOptions
    # @param [Hash] opts the optional parameters
    # @return [InboxRulesetTestResult]
    def test_new_inbox_ruleset(test_new_inbox_ruleset_options, opts = {})
      data, _status_code, _headers = test_new_inbox_ruleset_with_http_info(test_new_inbox_ruleset_options, opts)
      data
    end

    # Test new inbox ruleset
    # Test new inbox ruleset
    # @param test_new_inbox_ruleset_options [TestNewInboxRulesetOptions] testNewInboxRulesetOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(InboxRulesetTestResult, Integer, Hash)>] InboxRulesetTestResult data, response status code and response headers
    def test_new_inbox_ruleset_with_http_info(test_new_inbox_ruleset_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxRulesetControllerApi.test_new_inbox_ruleset ...'
      end
      # verify the required parameter 'test_new_inbox_ruleset_options' is set
      if @api_client.config.client_side_validation && test_new_inbox_ruleset_options.nil?
        fail ArgumentError, "Missing the required parameter 'test_new_inbox_ruleset_options' when calling InboxRulesetControllerApi.test_new_inbox_ruleset"
      end
      # resource path
      local_var_path = '/rulesets'

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
      post_body = opts[:body] || @api_client.object_to_http_body(test_new_inbox_ruleset_options) 

      # return_type
      return_type = opts[:return_type] || 'InboxRulesetTestResult' 

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

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InboxRulesetControllerApi#test_new_inbox_ruleset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
