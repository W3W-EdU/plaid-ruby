=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.385.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module Plaid
  class ActivityType
    UNKNOWN = "UNKNOWN".freeze
    ITEM_CREATE = "ITEM_CREATE".freeze
    ITEM_IMPORT = "ITEM_IMPORT".freeze
    ITEM_UPDATE = "ITEM_UPDATE".freeze
    ITEM_UNLINK = "ITEM_UNLINK".freeze
    PORTAL_UNLINK = "PORTAL_UNLINK".freeze
    PORTAL_ITEMS_DELETE = "PORTAL_ITEMS_DELETE".freeze
    ITEM_REMOVE = "ITEM_REMOVE".freeze
    INVARIANT_CHECKER_DELETION = "INVARIANT_CHECKER_DELETION".freeze
    SCOPES_UPDATE = "SCOPES_UPDATE".freeze

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
