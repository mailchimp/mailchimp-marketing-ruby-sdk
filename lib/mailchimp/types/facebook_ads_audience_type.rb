# frozen_string_literal: true

module Mailchimp
  module Types
    module FacebookAdsAudienceType
      extend Mailchimp::Internal::Types::Enum

      CUSTOM_AUDIENCE = "Custom Audience"
      LOOKALIKE_AUDIENCE = "Lookalike Audience"
      INTEREST_BASED_AUDIENCE = "Interest-based Audience"
    end
  end
end
