=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.503.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'date'
require 'time'

module Plaid
  # Object representing metadata pertaining to the document.
  class CreditDocumentMetadata
    # The name of the document.
    attr_accessor :name

    # The type of document.  `PAYSTUB`: A paystub.  `BANK_STATEMENT`: A bank statement.  `US_TAX_W2`: A W-2 wage and tax statement provided by a US employer reflecting wages earned by the employee.  `US_MILITARY_ERAS`: An electronic Retirement Account Statement (eRAS) issued by the US military.  `US_MILITARY_LES`: A Leave and Earnings Statement (LES) issued by the US military.  `US_MILITARY_CLES`: A Civilian Leave and Earnings Statment (CLES) issued by the US military.  `GIG`: Used to indicate that the income is related to gig work. Does not necessarily correspond to a specific document type.  `PLAID_GENERATED_PAYSTUB_PDF`: Used to indicate that the PDF for the paystub was generated by Plaid.  `NONE`: Used to indicate that there is no underlying document for the data.  `UNKNOWN`: Document type could not be determined.
    attr_accessor :document_type

    # Signed URL to retrieve the underlying file. For Payroll Income, the file type will always be PDF, and the file may not be available, in which case the field will be `null`. If you would like Plaid to generate a PDF if the original is not available, contact your Account Manager. [Example generated pay stub](https://www.plaid.com/documents/plaid-generated-mock-paystub.pdf).  For Document Income, this field will not be `null`, and the file type will be the original file type uploaded by the user. For more details on available file types, see the [Document Income](https://www.plaid.com/docs/income/payroll-income) documentation.  This download URL can only be used once and expires after two minutes. To generate a new download URL, call `/credit/payroll_income/get` again.
    attr_accessor :download_url

    # The processing status of the document.  `PROCESSING_COMPLETE`: The document was successfully processed.  `DOCUMENT_ERROR`: The document could not be processed. Possible causes include: The document was an unacceptable document type such as an offer letter or bank statement, the document image was cropped or blurry, or the document was corrupted.  `UNKNOWN` or `null`: An internal error occurred. If this happens repeatedly, contact support or your Plaid account manager.
    attr_accessor :status

    # The number of pages of the uploaded document (if available).
    attr_accessor :page_count

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'document_type' => :'document_type',
        :'download_url' => :'download_url',
        :'status' => :'status',
        :'page_count' => :'page_count'
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
        :'document_type' => :'String',
        :'download_url' => :'String',
        :'status' => :'String',
        :'page_count' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'document_type',
        :'download_url',
        :'status',
        :'page_count'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::CreditDocumentMetadata` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::CreditDocumentMetadata`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'document_type')
        self.document_type = attributes[:'document_type']
      end

      if attributes.key?(:'download_url')
        self.download_url = attributes[:'download_url']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'page_count')
        self.page_count = attributes[:'page_count']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          document_type == o.document_type &&
          download_url == o.download_url &&
          status == o.status &&
          page_count == o.page_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, document_type, download_url, status, page_count].hash
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
