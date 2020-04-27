=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 

The version of the OpenAPI document: d1659dc1567a5b62f65d0612107a50aace03e085

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'cgi'

module MailSlurpClient
  class AliasControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an email alias
    # Create an email alias belonging to a user ID. To create anonymous aliases use the `createAnonymousAlias` method.
    # @param create_owned_alias_options [CreateOwnedAliasOptions] createOwnedAliasOptions
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_alias(create_owned_alias_options, opts = {})
      create_alias_with_http_info(create_owned_alias_options, opts)
      nil
    end

    # Create an email alias
    # Create an email alias belonging to a user ID. To create anonymous aliases use the &#x60;createAnonymousAlias&#x60; method.
    # @param create_owned_alias_options [CreateOwnedAliasOptions] createOwnedAliasOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_alias_with_http_info(create_owned_alias_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AliasControllerApi.create_alias ...'
      end
      # verify the required parameter 'create_owned_alias_options' is set
      if @api_client.config.client_side_validation && create_owned_alias_options.nil?
        fail ArgumentError, "Missing the required parameter 'create_owned_alias_options' when calling AliasControllerApi.create_alias"
      end
      # resource path
      local_var_path = '/aliases'

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
      post_body = opts[:body] || @api_client.object_to_http_body(create_owned_alias_options) 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AliasControllerApi#create_alias\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an anonymous email alias
    # @param create_anonymous_alias_options [CreateAnonymousAliasOptions] createAnonymousAliasOptions
    # @param [Hash] opts the optional parameters
    # @return [ModelAlias]
    def create_anonymous_alias(create_anonymous_alias_options, opts = {})
      data, _status_code, _headers = create_anonymous_alias_with_http_info(create_anonymous_alias_options, opts)
      data
    end

    # Create an anonymous email alias
    # @param create_anonymous_alias_options [CreateAnonymousAliasOptions] createAnonymousAliasOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelAlias, Integer, Hash)>] ModelAlias data, response status code and response headers
    def create_anonymous_alias_with_http_info(create_anonymous_alias_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AliasControllerApi.create_anonymous_alias ...'
      end
      # verify the required parameter 'create_anonymous_alias_options' is set
      if @api_client.config.client_side_validation && create_anonymous_alias_options.nil?
        fail ArgumentError, "Missing the required parameter 'create_anonymous_alias_options' when calling AliasControllerApi.create_anonymous_alias"
      end
      # resource path
      local_var_path = '/aliases/anonymous'

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
      post_body = opts[:body] || @api_client.object_to_http_body(create_anonymous_alias_options) 

      # return_type
      return_type = opts[:return_type] || 'ModelAlias' 

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
        @api_client.config.logger.debug "API called: AliasControllerApi#create_anonymous_alias\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an owned alias
    # @param alias_id [String] aliasId
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_alias(alias_id, opts = {})
      delete_alias_with_http_info(alias_id, opts)
      nil
    end

    # Delete an owned alias
    # @param alias_id [String] aliasId
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_alias_with_http_info(alias_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AliasControllerApi.delete_alias ...'
      end
      # verify the required parameter 'alias_id' is set
      if @api_client.config.client_side_validation && alias_id.nil?
        fail ArgumentError, "Missing the required parameter 'alias_id' when calling AliasControllerApi.delete_alias"
      end
      # resource path
      local_var_path = '/aliases/{aliasId}'.sub('{' + 'aliasId' + '}', CGI.escape(alias_id.to_s))

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
        @api_client.config.logger.debug "API called: AliasControllerApi#delete_alias\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an email alias
    # Get an email alias by ID
    # @param alias_id [String] aliasId
    # @param [Hash] opts the optional parameters
    # @return [ModelAlias]
    def get_alias(alias_id, opts = {})
      data, _status_code, _headers = get_alias_with_http_info(alias_id, opts)
      data
    end

    # Get an email alias
    # Get an email alias by ID
    # @param alias_id [String] aliasId
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelAlias, Integer, Hash)>] ModelAlias data, response status code and response headers
    def get_alias_with_http_info(alias_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AliasControllerApi.get_alias ...'
      end
      # verify the required parameter 'alias_id' is set
      if @api_client.config.client_side_validation && alias_id.nil?
        fail ArgumentError, "Missing the required parameter 'alias_id' when calling AliasControllerApi.get_alias"
      end
      # resource path
      local_var_path = '/aliases/{aliasId}'.sub('{' + 'aliasId' + '}', CGI.escape(alias_id.to_s))

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
      return_type = opts[:return_type] || 'ModelAlias' 

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
        @api_client.config.logger.debug "API called: AliasControllerApi#get_alias\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all email aliases
    # Get all email aliases in paginated form
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in alias list pagination (default to 0)
    # @option opts [Integer] :size Optional page size in alias list pagination (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @return [PageAlias]
    def get_aliases(opts = {})
      data, _status_code, _headers = get_aliases_with_http_info(opts)
      data
    end

    # Get all email aliases
    # Get all email aliases in paginated form
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in alias list pagination
    # @option opts [Integer] :size Optional page size in alias list pagination
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @return [Array<(PageAlias, Integer, Hash)>] PageAlias data, response status code and response headers
    def get_aliases_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AliasControllerApi.get_aliases ...'
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/aliases'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
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
      return_type = opts[:return_type] || 'PageAlias' 

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
        @api_client.config.logger.debug "API called: AliasControllerApi#get_aliases\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an owned alias
    # @param alias_id [String] aliasId
    # @param create_owned_alias_options [CreateOwnedAliasOptions] createOwnedAliasOptions
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_alias(alias_id, create_owned_alias_options, opts = {})
      update_alias_with_http_info(alias_id, create_owned_alias_options, opts)
      nil
    end

    # Update an owned alias
    # @param alias_id [String] aliasId
    # @param create_owned_alias_options [CreateOwnedAliasOptions] createOwnedAliasOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_alias_with_http_info(alias_id, create_owned_alias_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AliasControllerApi.update_alias ...'
      end
      # verify the required parameter 'alias_id' is set
      if @api_client.config.client_side_validation && alias_id.nil?
        fail ArgumentError, "Missing the required parameter 'alias_id' when calling AliasControllerApi.update_alias"
      end
      # verify the required parameter 'create_owned_alias_options' is set
      if @api_client.config.client_side_validation && create_owned_alias_options.nil?
        fail ArgumentError, "Missing the required parameter 'create_owned_alias_options' when calling AliasControllerApi.update_alias"
      end
      # resource path
      local_var_path = '/aliases/{aliasId}'.sub('{' + 'aliasId' + '}', CGI.escape(alias_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(create_owned_alias_options) 

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

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AliasControllerApi#update_alias\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
