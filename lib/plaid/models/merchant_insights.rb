=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.485.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'date'
require 'time'

module Plaid
  # Insights into a user’s top merchants.
  class MerchantInsights
    # The counterparty name.
    attr_accessor :name

    # A unique, stable, Plaid-generated id that maps to the merchant.
    attr_accessor :entity_id

    # The website associated with the merchant.
    attr_accessor :website

    # The number of transactions associated with merchant of this type.
    attr_accessor :transaction_count

    # The primary personal finance category associated with this merchant.
    attr_accessor :personal_finance_category_primary

    # The detailed personal finance category associated with this merchant.
    attr_accessor :personal_finance_category_detailed

    # Sum of outflow amounts.
    attr_accessor :total_outflows

    # Sum of inflow amounts.
    attr_accessor :total_inflows

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'entity_id' => :'entity_id',
        :'website' => :'website',
        :'transaction_count' => :'transaction_count',
        :'personal_finance_category_primary' => :'personal_finance_category_primary',
        :'personal_finance_category_detailed' => :'personal_finance_category_detailed',
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
        :'name' => :'String',
        :'entity_id' => :'String',
        :'website' => :'String',
        :'transaction_count' => :'Integer',
        :'personal_finance_category_primary' => :'String',
        :'personal_finance_category_detailed' => :'String',
        :'total_outflows' => :'Float',
        :'total_inflows' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'entity_id',
        :'website',
        :'personal_finance_category_primary',
        :'personal_finance_category_detailed',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::MerchantInsights` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::MerchantInsights`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'entity_id')
        self.entity_id = attributes[:'entity_id']
      end

      if attributes.key?(:'website')
        self.website = attributes[:'website']
      end

      if attributes.key?(:'transaction_count')
        self.transaction_count = attributes[:'transaction_count']
      end

      if attributes.key?(:'personal_finance_category_primary')
        self.personal_finance_category_primary = attributes[:'personal_finance_category_primary']
      end

      if attributes.key?(:'personal_finance_category_detailed')
        self.personal_finance_category_detailed = attributes[:'personal_finance_category_detailed']
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
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

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
      return false if @name.nil?
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
          name == o.name &&
          entity_id == o.entity_id &&
          website == o.website &&
          transaction_count == o.transaction_count &&
          personal_finance_category_primary == o.personal_finance_category_primary &&
          personal_finance_category_detailed == o.personal_finance_category_detailed &&
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
      [name, entity_id, website, transaction_count, personal_finance_category_primary, personal_finance_category_detailed, total_outflows, total_inflows].hash
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
