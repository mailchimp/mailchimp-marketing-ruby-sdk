# frozen_string_literal: true

module Mailchimp
  module Types
    module LandingPageLinksItemMethod
      extend Mailchimp::Internal::Types::Enum

      GET = "GET"
      POST = "POST"
      PUT = "PUT"
      PATCH = "PATCH"
      DELETE = "DELETE"
      OPTIONS = "OPTIONS"
      HEAD = "HEAD"
    end
  end
end
