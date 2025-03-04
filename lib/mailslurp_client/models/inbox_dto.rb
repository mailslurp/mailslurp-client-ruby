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
  # Representation of a MailSlurp inbox. An inbox has an ID and a real email address. Emails can be sent to or from this email address. Inboxes are either `SMTP` or `HTTP` mailboxes. The default, `HTTP` inboxes, use AWS SES to process emails and are best suited as test email accounts and do not support IMAP or POP3. `SMTP` inboxes use a custom mail server at `mxslurp.click` and support SMTP login, IMAP and POP3. Use the `EmailController` or the `InboxController` methods to send and receive emails and attachments. Inboxes may have a description, name, and tags for display purposes. You can also favourite an inbox for easier searching.
  class InboxDto
    # ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods `waitForLatestEmail` and `getEmails` methods respectively. Inboxes can be used with aliases to forward emails automatically.
    attr_accessor :id

    # ID of user that inbox belongs to
    attr_accessor :user_id

    # When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`.
    attr_accessor :created_at

    # Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search
    attr_accessor :name

    # ID of custom domain used by the inbox if any
    attr_accessor :domain_id

    # Description of an inbox for labelling and searching purposes
    attr_accessor :description

    # The inbox's email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
    attr_accessor :email_address

    # Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email.
    attr_accessor :expires_at

    # Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering
    attr_accessor :favourite

    # Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
    attr_accessor :tags

    # Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send).
    attr_accessor :inbox_type

    # Is the inbox readOnly for the caller. Read only means can not be deleted or modified. This flag is present when using team accounts and shared inboxes.
    attr_accessor :read_only

    # Virtual inbox can receive email but will not send emails to real recipients. Will save sent email record but never send an actual email. Perfect for testing mail server actions.
    attr_accessor :virtual_inbox

    # Inbox function if used as a primitive for another system.
    attr_accessor :functions_as

    # Local part of email addresses before the @ symbol
    attr_accessor :local_part

    # Domain name of the email address
    attr_accessor :domain

    # Region of the inbox
    attr_accessor :account_region

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
        :'id' => :'id',
        :'user_id' => :'userId',
        :'created_at' => :'createdAt',
        :'name' => :'name',
        :'domain_id' => :'domainId',
        :'description' => :'description',
        :'email_address' => :'emailAddress',
        :'expires_at' => :'expiresAt',
        :'favourite' => :'favourite',
        :'tags' => :'tags',
        :'inbox_type' => :'inboxType',
        :'read_only' => :'readOnly',
        :'virtual_inbox' => :'virtualInbox',
        :'functions_as' => :'functionsAs',
        :'local_part' => :'localPart',
        :'domain' => :'domain',
        :'account_region' => :'accountRegion'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'user_id' => :'String',
        :'created_at' => :'DateTime',
        :'name' => :'String',
        :'domain_id' => :'String',
        :'description' => :'String',
        :'email_address' => :'String',
        :'expires_at' => :'DateTime',
        :'favourite' => :'Boolean',
        :'tags' => :'Array<String>',
        :'inbox_type' => :'String',
        :'read_only' => :'Boolean',
        :'virtual_inbox' => :'Boolean',
        :'functions_as' => :'String',
        :'local_part' => :'String',
        :'domain' => :'String',
        :'account_region' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'user_id',
        :'name',
        :'domain_id',
        :'description',
        :'expires_at',
        :'tags',
        :'inbox_type',
        :'functions_as',
        :'local_part',
        :'domain',
        :'account_region'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MailSlurpClient::InboxDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MailSlurpClient::InboxDto`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'domain_id')
        self.domain_id = attributes[:'domain_id']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'email_address')
        self.email_address = attributes[:'email_address']
      end

      if attributes.key?(:'expires_at')
        self.expires_at = attributes[:'expires_at']
      end

      if attributes.key?(:'favourite')
        self.favourite = attributes[:'favourite']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'inbox_type')
        self.inbox_type = attributes[:'inbox_type']
      end

      if attributes.key?(:'read_only')
        self.read_only = attributes[:'read_only']
      end

      if attributes.key?(:'virtual_inbox')
        self.virtual_inbox = attributes[:'virtual_inbox']
      end

      if attributes.key?(:'functions_as')
        self.functions_as = attributes[:'functions_as']
      end

      if attributes.key?(:'local_part')
        self.local_part = attributes[:'local_part']
      end

      if attributes.key?(:'domain')
        self.domain = attributes[:'domain']
      end

      if attributes.key?(:'account_region')
        self.account_region = attributes[:'account_region']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @email_address.nil?
        invalid_properties.push('invalid value for "email_address", email_address cannot be nil.')
      end

      if @favourite.nil?
        invalid_properties.push('invalid value for "favourite", favourite cannot be nil.')
      end

      if @read_only.nil?
        invalid_properties.push('invalid value for "read_only", read_only cannot be nil.')
      end

      if @virtual_inbox.nil?
        invalid_properties.push('invalid value for "virtual_inbox", virtual_inbox cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @created_at.nil?
      return false if @email_address.nil?
      return false if @favourite.nil?
      inbox_type_validator = EnumAttributeValidator.new('String', ["HTTP_INBOX", "SMTP_INBOX"])
      return false unless inbox_type_validator.valid?(@inbox_type)
      return false if @read_only.nil?
      return false if @virtual_inbox.nil?
      functions_as_validator = EnumAttributeValidator.new('String', ["ALIAS", "THREAD", "CATCH_ALL", "CONNECTOR", "ACCOUNT", "GUEST"])
      return false unless functions_as_validator.valid?(@functions_as)
      account_region_validator = EnumAttributeValidator.new('String', ["US_WEST_2"])
      return false unless account_region_validator.valid?(@account_region)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] inbox_type Object to be assigned
    def inbox_type=(inbox_type)
      validator = EnumAttributeValidator.new('String', ["HTTP_INBOX", "SMTP_INBOX"])
      unless validator.valid?(inbox_type)
        fail ArgumentError, "invalid value for \"inbox_type\", must be one of #{validator.allowable_values}."
      end
      @inbox_type = inbox_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] functions_as Object to be assigned
    def functions_as=(functions_as)
      validator = EnumAttributeValidator.new('String', ["ALIAS", "THREAD", "CATCH_ALL", "CONNECTOR", "ACCOUNT", "GUEST"])
      unless validator.valid?(functions_as)
        fail ArgumentError, "invalid value for \"functions_as\", must be one of #{validator.allowable_values}."
      end
      @functions_as = functions_as
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_region Object to be assigned
    def account_region=(account_region)
      validator = EnumAttributeValidator.new('String', ["US_WEST_2"])
      unless validator.valid?(account_region)
        fail ArgumentError, "invalid value for \"account_region\", must be one of #{validator.allowable_values}."
      end
      @account_region = account_region
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          user_id == o.user_id &&
          created_at == o.created_at &&
          name == o.name &&
          domain_id == o.domain_id &&
          description == o.description &&
          email_address == o.email_address &&
          expires_at == o.expires_at &&
          favourite == o.favourite &&
          tags == o.tags &&
          inbox_type == o.inbox_type &&
          read_only == o.read_only &&
          virtual_inbox == o.virtual_inbox &&
          functions_as == o.functions_as &&
          local_part == o.local_part &&
          domain == o.domain &&
          account_region == o.account_region
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, user_id, created_at, name, domain_id, description, email_address, expires_at, favourite, tags, inbox_type, read_only, virtual_inbox, functions_as, local_part, domain, account_region].hash
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
