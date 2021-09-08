=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.31.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

require 'date'
require 'time'

module Plaid
  class TransferEventType
    PENDING = "pending".freeze
    CANCELLED = "cancelled".freeze
    FAILED = "failed".freeze
    POSTED = "posted".freeze
    REVERSED = "reversed".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = TransferEventType.constants.select { |c| TransferEventType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #TransferEventType" if constantValues.empty?
      value
    end
  end
end
