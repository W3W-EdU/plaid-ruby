=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.496.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'date'
require 'time'

module Plaid
  class RiskCheckLinkedService
    APPLE = "apple".freeze
    EBAY = "ebay".freeze
    FACEBOOK = "facebook".freeze
    FLICKR = "flickr".freeze
    FOURSQUARE = "foursquare".freeze
    GITHUB = "github".freeze
    GOOGLE = "google".freeze
    GRAVATAR = "gravatar".freeze
    INSTAGRAM = "instagram".freeze
    LASTFM = "lastfm".freeze
    LINKEDIN = "linkedin".freeze
    MICROSOFT = "microsoft".freeze
    MYSPACE = "myspace".freeze
    PINTEREST = "pinterest".freeze
    SKYPE = "skype".freeze
    SPOTIFY = "spotify".freeze
    TELEGRAM = "telegram".freeze
    TUMBLR = "tumblr".freeze
    TWITTER = "twitter".freeze
    VIBER = "viber".freeze
    VIMEO = "vimeo".freeze
    WEIBO = "weibo".freeze
    WHATSAPP = "whatsapp".freeze
    YAHOO = "yahoo".freeze
    AIRBNB = "airbnb".freeze
    AMAZON = "amazon".freeze
    BOOKING = "booking".freeze
    DISCORD = "discord".freeze
    KAKAO = "kakao".freeze
    OK = "ok".freeze
    QZONE = "qzone".freeze
    LINE = "line".freeze
    SNAPCHAT = "snapchat".freeze
    ZALO = "zalo".freeze

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
