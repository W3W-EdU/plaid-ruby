=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.534.3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'date'
require 'time'

module Plaid
  # A single account at a financial institution.
  class AccountBase
    # Plaid’s unique identifier for the account. This value will not change unless Plaid can't reconcile the account with the data returned by the financial institution. This may occur, for example, when the name of the account changes. If this happens a new `account_id` will be assigned to the account.  The `account_id` can also change if the `access_token` is deleted and the same credentials that were used to generate that `access_token` are used to generate a new `access_token` on a later date. In that case, the new `account_id` will be different from the old `account_id`.  If an account with a specific `account_id` disappears instead of changing, the account is likely closed. Closed accounts are not returned by the Plaid API.  Like all Plaid identifiers, the `account_id` is case sensitive.
    attr_accessor :account_id

    attr_accessor :balances

    # The last 2-4 alphanumeric characters of an account's official account number. Note that the mask may be non-unique between an Item's accounts, and it may also not match the mask that the bank displays to the user.
    attr_accessor :mask

    # The name of the account, either assigned by the user or by the financial institution itself
    attr_accessor :name

    # The official name of the account as given by the financial institution
    attr_accessor :official_name

    attr_accessor :type

    attr_accessor :subtype

    # The current verification status of an Auth Item initiated through Automated or Manual micro-deposits.  Returned for Auth Items only.  `pending_automatic_verification`: The Item is pending automatic verification  `pending_manual_verification`: The Item is pending manual micro-deposit verification. Items remain in this state until the user successfully verifies the micro-deposit.  `automatically_verified`: The Item has successfully been automatically verified   `manually_verified`: The Item has successfully been manually verified  `verification_expired`: Plaid was unable to automatically verify the deposit within 7 calendar days and will no longer attempt to validate the Item. Users may retry by submitting their information again through Link.  `verification_failed`: The Item failed manual micro-deposit verification because the user exhausted all 3 verification attempts. Users may retry by submitting their information again through Link.  `database_matched`: The Item has successfully been verified using Plaid's data sources.  `database_insights_pass`: The Item's ACH numbers have been verified using Plaid's data sources and have strong signal for being valid. Note: Database Insights is currently a beta feature, please contact your account manager for more information.  `database_insights_pass_with_caution`: The Item's ACH numbers have been verified using Plaid's data sources and have some signal for being valid. Note: Database Insights is currently a beta feature, please contact your account manager for more information.  `database_insights_fail`:  The Item's ACH numbers have been verified using Plaid's data sources and have signal for being invalid and/or have no signal for being valid. Note: Database Insights is currently a beta feature, please contact your account manager for more information.   
    attr_accessor :verification_status

    attr_accessor :verification_insights

    # A unique and persistent identifier for accounts that can be used to trace multiple instances of the same account across different Items for depository accounts. This is currently only supported for Chase Items. Because Chase accounts have a different account number each time they are linked, this field may be used instead of the account number to uniquely identify a Chase account across multiple Items for payments use cases, helping to reduce duplicate Items or attempted fraud. In Sandbox, this field may be populated for any account; in Production, it will only be populated for Chase accounts.
    attr_accessor :persistent_account_id

    attr_accessor :holder_category

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
        :'account_id' => :'account_id',
        :'balances' => :'balances',
        :'mask' => :'mask',
        :'name' => :'name',
        :'official_name' => :'official_name',
        :'type' => :'type',
        :'subtype' => :'subtype',
        :'verification_status' => :'verification_status',
        :'verification_insights' => :'verification_insights',
        :'persistent_account_id' => :'persistent_account_id',
        :'holder_category' => :'holder_category'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_id' => :'String',
        :'balances' => :'AccountBalance',
        :'mask' => :'String',
        :'name' => :'String',
        :'official_name' => :'String',
        :'type' => :'AccountType',
        :'subtype' => :'AccountSubtype',
        :'verification_status' => :'String',
        :'verification_insights' => :'AccountVerificationInsights',
        :'persistent_account_id' => :'String',
        :'holder_category' => :'AccountHolderCategory'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'mask',
        :'official_name',
        :'subtype',
        :'holder_category'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::AccountBase` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::AccountBase`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'balances')
        self.balances = attributes[:'balances']
      end

      if attributes.key?(:'mask')
        self.mask = attributes[:'mask']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'official_name')
        self.official_name = attributes[:'official_name']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'subtype')
        self.subtype = attributes[:'subtype']
      end

      if attributes.key?(:'verification_status')
        self.verification_status = attributes[:'verification_status']
      end

      if attributes.key?(:'verification_insights')
        self.verification_insights = attributes[:'verification_insights']
      end

      if attributes.key?(:'persistent_account_id')
        self.persistent_account_id = attributes[:'persistent_account_id']
      end

      if attributes.key?(:'holder_category')
        self.holder_category = attributes[:'holder_category']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @account_id.nil?
        invalid_properties.push('invalid value for "account_id", account_id cannot be nil.')
      end

      if @balances.nil?
        invalid_properties.push('invalid value for "balances", balances cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account_id.nil?
      return false if @balances.nil?
      return false if @name.nil?
      return false if @type.nil?
      verification_status_validator = EnumAttributeValidator.new('String', ["automatically_verified", "pending_automatic_verification", "pending_manual_verification", "manually_verified", "verification_expired", "verification_failed", "database_matched", "database_insights_pass", "database_insights_pass_with_caution", "database_insights_fail"])
      return false unless verification_status_validator.valid?(@verification_status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification_status Object to be assigned
    def verification_status=(verification_status)
      validator = EnumAttributeValidator.new('String', ["automatically_verified", "pending_automatic_verification", "pending_manual_verification", "manually_verified", "verification_expired", "verification_failed", "database_matched", "database_insights_pass", "database_insights_pass_with_caution", "database_insights_fail"])
      unless validator.valid?(verification_status)
        fail ArgumentError, "invalid value for \"verification_status\", must be one of #{validator.allowable_values}."
      end
      @verification_status = verification_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          balances == o.balances &&
          mask == o.mask &&
          name == o.name &&
          official_name == o.official_name &&
          type == o.type &&
          subtype == o.subtype &&
          verification_status == o.verification_status &&
          verification_insights == o.verification_insights &&
          persistent_account_id == o.persistent_account_id &&
          holder_category == o.holder_category
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_id, balances, mask, name, official_name, type, subtype, verification_status, verification_insights, persistent_account_id, holder_category].hash
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
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
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
        # models (e.g. Pet) or oneOf
        klass = Plaid.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
