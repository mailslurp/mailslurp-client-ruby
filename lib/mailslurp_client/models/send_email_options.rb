=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2
Contact: contact@mailslurp.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module MailSlurpClient
  # Options for the email to be sent
  class SendEmailOptions
    # Optional list of contact IDs to send email to. Manage your contacts via the API or dashboard. When contacts are used the email is sent to each contact separately so they will not see other recipients.
    attr_accessor :to_contacts

    # Optional contact group ID to send email to. You can create contacts and contact groups in the API or dashboard and use them for email campaigns. When contact groups are used the email is sent to each contact separately so they will not see other recipients
    attr_accessor :to_group

    # List of destination email addresses. Each email address must be RFC 5322 format. Even single recipients must be in array form. Maximum recipients per email depends on your plan. If you need to send many emails try using contacts or contact groups or use a non standard sendStrategy to ensure that spam filters are not triggered (many recipients in one email can affect your spam rating). Be cautious when sending emails that your recipients exist. High bounce rates (meaning a high percentage of emails cannot be delivered because an address does not exist) can result in account freezing.
    attr_accessor :to

    # Optional from address. Email address is RFC 5322 format and may include a display name and email in angle brackets (`my@address.com` or `My inbox <my@address.com>`). If no sender is set the source inbox address will be used for this field. If you set `useInboxName` to `true` the from field will include the inbox name as a display name: `inbox_name <inbox@address.com>`. For this to work use the name field when creating an inbox. Beware of potential spam penalties when setting the from field to an address not used by the inbox. Your emails may get blocked by services if you impersonate another address. To use a custom email addresses use a custom domain. You can create domains with the DomainController. The domain must be verified in the dashboard before it can be used.
    attr_accessor :from

    # Optional from name if not passed with address. If you set `useInboxName` to `true` the from field will include the inbox name as a display name
    attr_accessor :from_name

    # Optional list of cc destination email addresses
    attr_accessor :cc

    # Optional list of bcc destination email addresses
    attr_accessor :bcc

    # Optional email subject line
    attr_accessor :subject

    # Optional replyTo header
    attr_accessor :reply_to

    # Optional custom headers
    attr_accessor :custom_headers

    # Optional contents of email. If body contains HTML then set `isHTML` to true to ensure that email clients render it correctly. You can use moustache template syntax in the email body in conjunction with `toGroup` contact variables or `templateVariables` data. If you need more templating control consider creating a template and using the `template` property instead of the body.
    attr_accessor :body

    # Optional HTML flag to indicate that contents is HTML. Set's a `content-type: text/html` for email. (Deprecated: use `isHTML` instead.)
    attr_accessor :html

    # Optional HTML flag. If true the `content-type` of the email will be `text/html`. Set to true when sending HTML to ensure proper rending on email clients
    attr_accessor :is_html

    # Optional charset
    attr_accessor :charset

    # Optional list of attachment IDs to send with this email. You must first upload each attachment separately via method call or dashboard in order to obtain attachment IDs. This way you can reuse attachments with different emails once uploaded. There are several ways to upload that support `multi-part form`, `base64 file encoding`, and octet stream binary uploads. See the `UploadController` for available methods. 
    attr_accessor :attachments

    # Optional map of template variables. Will replace moustache syntax variables in subject and body or template with the associated values if found.
    attr_accessor :template_variables

    # Optional template ID to use for body. Will override body if provided. When using a template make sure you pass the corresponding map of `templateVariables`. You can find which variables are needed by fetching the template itself or viewing it in the dashboard.
    attr_accessor :template

    # How an email should be sent based on its recipients
    attr_accessor :send_strategy

    # Use name of inbox as sender email address name. Will construct RFC 5322 email address with `Inbox name <inbox@address.com>` if the inbox has a name.
    attr_accessor :use_inbox_name

    # Add tracking pixel to email
    attr_accessor :add_tracking_pixel

    # Filter recipients to remove any bounced recipients from to, bcc, and cc before sending
    attr_accessor :filter_bounced_recipients

    # Validate recipient email addresses before sending
    attr_accessor :validate_email_addresses

    # Ignore empty recipients after validation removes all recipients as invalid and fail silently
    attr_accessor :ignore_empty_recipients

    # Is content AMP4EMAIL compatible. If set will send as x-amp-html part.
    attr_accessor :is_x_amp_html

    # Email body content parts for multipart mime message. Will override body.
    attr_accessor :body_parts

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'to_contacts' => :'toContacts',
        :'to_group' => :'toGroup',
        :'to' => :'to',
        :'from' => :'from',
        :'from_name' => :'fromName',
        :'cc' => :'cc',
        :'bcc' => :'bcc',
        :'subject' => :'subject',
        :'reply_to' => :'replyTo',
        :'custom_headers' => :'customHeaders',
        :'body' => :'body',
        :'html' => :'html',
        :'is_html' => :'isHTML',
        :'charset' => :'charset',
        :'attachments' => :'attachments',
        :'template_variables' => :'templateVariables',
        :'template' => :'template',
        :'send_strategy' => :'sendStrategy',
        :'use_inbox_name' => :'useInboxName',
        :'add_tracking_pixel' => :'addTrackingPixel',
        :'filter_bounced_recipients' => :'filterBouncedRecipients',
        :'validate_email_addresses' => :'validateEmailAddresses',
        :'ignore_empty_recipients' => :'ignoreEmptyRecipients',
        :'is_x_amp_html' => :'isXAmpHtml',
        :'body_parts' => :'bodyParts'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'to_contacts' => :'Array<String>',
        :'to_group' => :'String',
        :'to' => :'Array<String>',
        :'from' => :'String',
        :'from_name' => :'String',
        :'cc' => :'Array<String>',
        :'bcc' => :'Array<String>',
        :'subject' => :'String',
        :'reply_to' => :'String',
        :'custom_headers' => :'Hash<String, String>',
        :'body' => :'String',
        :'html' => :'Boolean',
        :'is_html' => :'Boolean',
        :'charset' => :'String',
        :'attachments' => :'Array<String>',
        :'template_variables' => :'Hash<String, Object>',
        :'template' => :'String',
        :'send_strategy' => :'String',
        :'use_inbox_name' => :'Boolean',
        :'add_tracking_pixel' => :'Boolean',
        :'filter_bounced_recipients' => :'Boolean',
        :'validate_email_addresses' => :'String',
        :'ignore_empty_recipients' => :'Boolean',
        :'is_x_amp_html' => :'Boolean',
        :'body_parts' => :'Array<SendEmailBodyPart>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'to_contacts',
        :'to_group',
        :'to',
        :'from',
        :'from_name',
        :'cc',
        :'bcc',
        :'subject',
        :'reply_to',
        :'custom_headers',
        :'body',
        :'html',
        :'is_html',
        :'charset',
        :'attachments',
        :'template_variables',
        :'template',
        :'send_strategy',
        :'use_inbox_name',
        :'add_tracking_pixel',
        :'filter_bounced_recipients',
        :'validate_email_addresses',
        :'ignore_empty_recipients',
        :'is_x_amp_html',
        :'body_parts'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MailSlurpClient::SendEmailOptions` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MailSlurpClient::SendEmailOptions`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'to_contacts')
        if (value = attributes[:'to_contacts']).is_a?(Array)
          self.to_contacts = value
        end
      end

      if attributes.key?(:'to_group')
        self.to_group = attributes[:'to_group']
      end

      if attributes.key?(:'to')
        if (value = attributes[:'to']).is_a?(Array)
          self.to = value
        end
      end

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'from_name')
        self.from_name = attributes[:'from_name']
      end

      if attributes.key?(:'cc')
        if (value = attributes[:'cc']).is_a?(Array)
          self.cc = value
        end
      end

      if attributes.key?(:'bcc')
        if (value = attributes[:'bcc']).is_a?(Array)
          self.bcc = value
        end
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'reply_to')
        self.reply_to = attributes[:'reply_to']
      end

      if attributes.key?(:'custom_headers')
        if (value = attributes[:'custom_headers']).is_a?(Hash)
          self.custom_headers = value
        end
      end

      if attributes.key?(:'body')
        self.body = attributes[:'body']
      end

      if attributes.key?(:'html')
        self.html = attributes[:'html']
      end

      if attributes.key?(:'is_html')
        self.is_html = attributes[:'is_html']
      end

      if attributes.key?(:'charset')
        self.charset = attributes[:'charset']
      end

      if attributes.key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      end

      if attributes.key?(:'template_variables')
        if (value = attributes[:'template_variables']).is_a?(Hash)
          self.template_variables = value
        end
      end

      if attributes.key?(:'template')
        self.template = attributes[:'template']
      end

      if attributes.key?(:'send_strategy')
        self.send_strategy = attributes[:'send_strategy']
      end

      if attributes.key?(:'use_inbox_name')
        self.use_inbox_name = attributes[:'use_inbox_name']
      end

      if attributes.key?(:'add_tracking_pixel')
        self.add_tracking_pixel = attributes[:'add_tracking_pixel']
      end

      if attributes.key?(:'filter_bounced_recipients')
        self.filter_bounced_recipients = attributes[:'filter_bounced_recipients']
      end

      if attributes.key?(:'validate_email_addresses')
        self.validate_email_addresses = attributes[:'validate_email_addresses']
      end

      if attributes.key?(:'ignore_empty_recipients')
        self.ignore_empty_recipients = attributes[:'ignore_empty_recipients']
      end

      if attributes.key?(:'is_x_amp_html')
        self.is_x_amp_html = attributes[:'is_x_amp_html']
      end

      if attributes.key?(:'body_parts')
        if (value = attributes[:'body_parts']).is_a?(Array)
          self.body_parts = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      send_strategy_validator = EnumAttributeValidator.new('String', ["SINGLE_MESSAGE"])
      return false unless send_strategy_validator.valid?(@send_strategy)
      validate_email_addresses_validator = EnumAttributeValidator.new('String', ["VALIDATE_FILTER_REMOVE_INVALID", "VALIDATE_ERROR_IF_INVALID", "NO_VALIDATION"])
      return false unless validate_email_addresses_validator.valid?(@validate_email_addresses)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] send_strategy Object to be assigned
    def send_strategy=(send_strategy)
      validator = EnumAttributeValidator.new('String', ["SINGLE_MESSAGE"])
      unless validator.valid?(send_strategy)
        fail ArgumentError, "invalid value for \"send_strategy\", must be one of #{validator.allowable_values}."
      end
      @send_strategy = send_strategy
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] validate_email_addresses Object to be assigned
    def validate_email_addresses=(validate_email_addresses)
      validator = EnumAttributeValidator.new('String', ["VALIDATE_FILTER_REMOVE_INVALID", "VALIDATE_ERROR_IF_INVALID", "NO_VALIDATION"])
      unless validator.valid?(validate_email_addresses)
        fail ArgumentError, "invalid value for \"validate_email_addresses\", must be one of #{validator.allowable_values}."
      end
      @validate_email_addresses = validate_email_addresses
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          to_contacts == o.to_contacts &&
          to_group == o.to_group &&
          to == o.to &&
          from == o.from &&
          from_name == o.from_name &&
          cc == o.cc &&
          bcc == o.bcc &&
          subject == o.subject &&
          reply_to == o.reply_to &&
          custom_headers == o.custom_headers &&
          body == o.body &&
          html == o.html &&
          is_html == o.is_html &&
          charset == o.charset &&
          attachments == o.attachments &&
          template_variables == o.template_variables &&
          template == o.template &&
          send_strategy == o.send_strategy &&
          use_inbox_name == o.use_inbox_name &&
          add_tracking_pixel == o.add_tracking_pixel &&
          filter_bounced_recipients == o.filter_bounced_recipients &&
          validate_email_addresses == o.validate_email_addresses &&
          ignore_empty_recipients == o.ignore_empty_recipients &&
          is_x_amp_html == o.is_x_amp_html &&
          body_parts == o.body_parts
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [to_contacts, to_group, to, from, from_name, cc, bcc, subject, reply_to, custom_headers, body, html, is_html, charset, attachments, template_variables, template, send_strategy, use_inbox_name, add_tracking_pixel, filter_bounced_recipients, validate_email_addresses, ignore_empty_recipients, is_x_amp_html, body_parts].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        MailSlurpClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
