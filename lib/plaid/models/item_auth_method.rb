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
  class ItemAuthMethod
    INSTANT_AUTH = "INSTANT_AUTH".freeze
    INSTANT_MATCH = "INSTANT_MATCH".freeze
    AUTOMATED_MICRODEPOSITS = "AUTOMATED_MICRODEPOSITS".freeze
    SAME_DAY_MICRODEPOSITS = "SAME_DAY_MICRODEPOSITS".freeze
    INSTANT_MICRODEPOSITS = "INSTANT_MICRODEPOSITS".freeze
    DATABASE_MATCH = "DATABASE_MATCH".freeze
    DATABASE_INSIGHTS = "DATABASE_INSIGHTS".freeze
    TRANSFER_MIGRATED = "TRANSFER_MIGRATED".freeze
    INVESTMENTS_FALLBACK = "INVESTMENTS_FALLBACK".freeze

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
      # We do not validate that the value is one of the enums set in the OpenAPI
      # file because we want to be able to add to our list of enums without
      # breaking this client library.
      value
    end
  end

end
