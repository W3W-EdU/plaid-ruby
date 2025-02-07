=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.617.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'date'
require 'time'

module Plaid
  # A possible account detected to be associated with a transaction user.
  class DetectedAccount
    # The detected account type (depository, credit, loan, investment etc.).
    attr_accessor :account_type

    # The detected subtype of the account, based on the transactions to/from the institution.
    attr_accessor :account_subtype

    # The number of transactions associated with this detected account type at this financial institution.
    attr_accessor :transaction_count

    # The date of the oldest transaction associated with this detected account type at this financial institution.
    attr_accessor :oldest_transaction_date

    # The date of the newest transaction associated with this detected account type at this financial institution.
    attr_accessor :newest_transaction_date

    # Amount of the most recent transaction associated with this detected account type at this financial institution.
    attr_accessor :newest_transaction_amount

    # Sum of outflow amounts associated with this detected account type at this financial institution.
    attr_accessor :total_outflows

    # Sum of inflow amounts associated with this detected account type at this financial institution.
    attr_accessor :total_inflows

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_type' => :'account_type',
        :'account_subtype' => :'account_subtype',
        :'transaction_count' => :'transaction_count',
        :'oldest_transaction_date' => :'oldest_transaction_date',
        :'newest_transaction_date' => :'newest_transaction_date',
        :'newest_transaction_amount' => :'newest_transaction_amount',
        :'total_outflows' => :'total_outflows',
        :'total_inflows' => :'total_inflows'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_type' => :'String',
        :'account_subtype' => :'String',
        :'transaction_count' => :'Integer',
        :'oldest_transaction_date' => :'Date',
        :'newest_transaction_date' => :'Date',
        :'newest_transaction_amount' => :'Float',
        :'total_outflows' => :'Float',
        :'total_inflows' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'account_type',
        :'account_subtype',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::DetectedAccount` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::DetectedAccount`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_type')
        self.account_type = attributes[:'account_type']
      end

      if attributes.key?(:'account_subtype')
        self.account_subtype = attributes[:'account_subtype']
      end

      if attributes.key?(:'transaction_count')
        self.transaction_count = attributes[:'transaction_count']
      end

      if attributes.key?(:'oldest_transaction_date')
        self.oldest_transaction_date = attributes[:'oldest_transaction_date']
      end

      if attributes.key?(:'newest_transaction_date')
        self.newest_transaction_date = attributes[:'newest_transaction_date']
      end

      if attributes.key?(:'newest_transaction_amount')
        self.newest_transaction_amount = attributes[:'newest_transaction_amount']
      end

      if attributes.key?(:'total_outflows')
        self.total_outflows = attributes[:'total_outflows']
      end

      if attributes.key?(:'total_inflows')
        self.total_inflows = attributes[:'total_inflows']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @transaction_count.nil?
        invalid_properties.push('invalid value for "transaction_count", transaction_count cannot be nil.')
      end

      if @total_outflows.nil?
        invalid_properties.push('invalid value for "total_outflows", total_outflows cannot be nil.')
      end

      if @total_inflows.nil?
        invalid_properties.push('invalid value for "total_inflows", total_inflows cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @transaction_count.nil?
      return false if @total_outflows.nil?
      return false if @total_inflows.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_type == o.account_type &&
          account_subtype == o.account_subtype &&
          transaction_count == o.transaction_count &&
          oldest_transaction_date == o.oldest_transaction_date &&
          newest_transaction_date == o.newest_transaction_date &&
          newest_transaction_amount == o.newest_transaction_amount &&
          total_outflows == o.total_outflows &&
          total_inflows == o.total_inflows
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_type, account_subtype, transaction_count, oldest_transaction_date, newest_transaction_date, newest_transaction_amount, total_outflows, total_inflows].hash
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
