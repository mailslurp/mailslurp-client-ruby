=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2
Contact: contact@mailslurp.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module MailSlurpClient
  class GroupControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add contacts to a group
    # @param group_id [String] 
    # @param update_group_contacts [UpdateGroupContacts] 
    # @param [Hash] opts the optional parameters
    # @return [GroupContactsDto]
    def add_contacts_to_group(group_id, update_group_contacts, opts = {})
      data, _status_code, _headers = add_contacts_to_group_with_http_info(group_id, update_group_contacts, opts)
      data
    end

    # Add contacts to a group
    # @param group_id [String] 
    # @param update_group_contacts [UpdateGroupContacts] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupContactsDto, Integer, Hash)>] GroupContactsDto data, response status code and response headers
    def add_contacts_to_group_with_http_info(group_id, update_group_contacts, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupControllerApi.add_contacts_to_group ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupControllerApi.add_contacts_to_group"
      end
      # verify the required parameter 'update_group_contacts' is set
      if @api_client.config.client_side_validation && update_group_contacts.nil?
        fail ArgumentError, "Missing the required parameter 'update_group_contacts' when calling GroupControllerApi.add_contacts_to_group"
      end
      # resource path
      local_var_path = '/groups/{groupId}/contacts'.sub('{' + 'groupId' + '}', CGI.escape(group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(update_group_contacts) 

      # return_type
      return_type = opts[:return_type] || 'GroupContactsDto' 

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
        @api_client.config.logger.debug "API called: GroupControllerApi#add_contacts_to_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a group
    # @param create_group_options [CreateGroupOptions] 
    # @param [Hash] opts the optional parameters
    # @return [GroupDto]
    def create_group(create_group_options, opts = {})
      data, _status_code, _headers = create_group_with_http_info(create_group_options, opts)
      data
    end

    # Create a group
    # @param create_group_options [CreateGroupOptions] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupDto, Integer, Hash)>] GroupDto data, response status code and response headers
    def create_group_with_http_info(create_group_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupControllerApi.create_group ...'
      end
      # verify the required parameter 'create_group_options' is set
      if @api_client.config.client_side_validation && create_group_options.nil?
        fail ArgumentError, "Missing the required parameter 'create_group_options' when calling GroupControllerApi.create_group"
      end
      # resource path
      local_var_path = '/groups'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(create_group_options) 

      # return_type
      return_type = opts[:return_type] || 'GroupDto' 

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
        @api_client.config.logger.debug "API called: GroupControllerApi#create_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete group
    # @param group_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_group(group_id, opts = {})
      delete_group_with_http_info(group_id, opts)
      nil
    end

    # Delete group
    # @param group_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_group_with_http_info(group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupControllerApi.delete_group ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupControllerApi.delete_group"
      end
      # resource path
      local_var_path = '/groups/{groupId}'.sub('{' + 'groupId' + '}', CGI.escape(group_id.to_s))

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
        @api_client.config.logger.debug "API called: GroupControllerApi#delete_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all Contact Groups in paginated format
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in list pagination (default to 0)
    # @option opts [Integer] :size Optional page size in list pagination (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @option opts [DateTime] :since Filter by created at after the given timestamp
    # @option opts [DateTime] :before Filter by created at before the given timestamp
    # @return [PageGroupProjection]
    def get_all_groups(opts = {})
      data, _status_code, _headers = get_all_groups_with_http_info(opts)
      data
    end

    # Get all Contact Groups in paginated format
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in list pagination
    # @option opts [Integer] :size Optional page size in list pagination
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @option opts [DateTime] :since Filter by created at after the given timestamp
    # @option opts [DateTime] :before Filter by created at before the given timestamp
    # @return [Array<(PageGroupProjection, Integer, Hash)>] PageGroupProjection data, response status code and response headers
    def get_all_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupControllerApi.get_all_groups ...'
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/groups/paginated'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PageGroupProjection' 

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
        @api_client.config.logger.debug "API called: GroupControllerApi#get_all_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get group
    # @param group_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [GroupDto]
    def get_group(group_id, opts = {})
      data, _status_code, _headers = get_group_with_http_info(group_id, opts)
      data
    end

    # Get group
    # @param group_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupDto, Integer, Hash)>] GroupDto data, response status code and response headers
    def get_group_with_http_info(group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupControllerApi.get_group ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupControllerApi.get_group"
      end
      # resource path
      local_var_path = '/groups/{groupId}'.sub('{' + 'groupId' + '}', CGI.escape(group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'GroupDto' 

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
        @api_client.config.logger.debug "API called: GroupControllerApi#get_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get group and contacts belonging to it
    # @param group_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [GroupContactsDto]
    def get_group_with_contacts(group_id, opts = {})
      data, _status_code, _headers = get_group_with_contacts_with_http_info(group_id, opts)
      data
    end

    # Get group and contacts belonging to it
    # @param group_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupContactsDto, Integer, Hash)>] GroupContactsDto data, response status code and response headers
    def get_group_with_contacts_with_http_info(group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupControllerApi.get_group_with_contacts ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupControllerApi.get_group_with_contacts"
      end
      # resource path
      local_var_path = '/groups/{groupId}/contacts'.sub('{' + 'groupId' + '}', CGI.escape(group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'GroupContactsDto' 

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
        @api_client.config.logger.debug "API called: GroupControllerApi#get_group_with_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get group and paginated contacts belonging to it
    # @param group_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in group contact pagination (default to 0)
    # @option opts [Integer] :size Optional page size in group contact pagination (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @option opts [DateTime] :since Filter by created at after the given timestamp
    # @option opts [DateTime] :before Filter by created at before the given timestamp
    # @return [PageContactProjection]
    def get_group_with_contacts_paginated(group_id, opts = {})
      data, _status_code, _headers = get_group_with_contacts_paginated_with_http_info(group_id, opts)
      data
    end

    # Get group and paginated contacts belonging to it
    # @param group_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in group contact pagination
    # @option opts [Integer] :size Optional page size in group contact pagination
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @option opts [DateTime] :since Filter by created at after the given timestamp
    # @option opts [DateTime] :before Filter by created at before the given timestamp
    # @return [Array<(PageContactProjection, Integer, Hash)>] PageContactProjection data, response status code and response headers
    def get_group_with_contacts_paginated_with_http_info(group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupControllerApi.get_group_with_contacts_paginated ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupControllerApi.get_group_with_contacts_paginated"
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/groups/{groupId}/contacts-paginated'.sub('{' + 'groupId' + '}', CGI.escape(group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PageContactProjection' 

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
        @api_client.config.logger.debug "API called: GroupControllerApi#get_group_with_contacts_paginated\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all groups
    # @param [Hash] opts the optional parameters
    # @return [Array<GroupProjection>]
    def get_groups(opts = {})
      data, _status_code, _headers = get_groups_with_http_info(opts)
      data
    end

    # Get all groups
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<GroupProjection>, Integer, Hash)>] Array<GroupProjection> data, response status code and response headers
    def get_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupControllerApi.get_groups ...'
      end
      # resource path
      local_var_path = '/groups'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<GroupProjection>' 

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
        @api_client.config.logger.debug "API called: GroupControllerApi#get_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove contacts from a group
    # @param group_id [String] 
    # @param update_group_contacts [UpdateGroupContacts] 
    # @param [Hash] opts the optional parameters
    # @return [GroupContactsDto]
    def remove_contacts_from_group(group_id, update_group_contacts, opts = {})
      data, _status_code, _headers = remove_contacts_from_group_with_http_info(group_id, update_group_contacts, opts)
      data
    end

    # Remove contacts from a group
    # @param group_id [String] 
    # @param update_group_contacts [UpdateGroupContacts] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupContactsDto, Integer, Hash)>] GroupContactsDto data, response status code and response headers
    def remove_contacts_from_group_with_http_info(group_id, update_group_contacts, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupControllerApi.remove_contacts_from_group ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupControllerApi.remove_contacts_from_group"
      end
      # verify the required parameter 'update_group_contacts' is set
      if @api_client.config.client_side_validation && update_group_contacts.nil?
        fail ArgumentError, "Missing the required parameter 'update_group_contacts' when calling GroupControllerApi.remove_contacts_from_group"
      end
      # resource path
      local_var_path = '/groups/{groupId}/contacts'.sub('{' + 'groupId' + '}', CGI.escape(group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(update_group_contacts) 

      # return_type
      return_type = opts[:return_type] || 'GroupContactsDto' 

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
        @api_client.config.logger.debug "API called: GroupControllerApi#remove_contacts_from_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
