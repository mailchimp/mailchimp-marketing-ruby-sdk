# frozen_string_literal: true

module Mailchimp
  module Types
    # Audience settings
    class FacebookAdsAudience < Internal::Types::Model
      field :email_source, -> { Mailchimp::Types::FacebookAdsAudienceEmailSource }, optional: true, nullable: false

      field :include_source_in_target, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :lookalike_country_code, -> { String }, optional: true, nullable: false

      field :source_type, -> { Mailchimp::Types::FacebookAdsAudienceSourceType }, optional: true, nullable: false

      field :targeting_specs, -> { Mailchimp::Types::FacebookAdsAudienceTargetingSpecs }, optional: true, nullable: false

      field :type, -> { Mailchimp::Types::FacebookAdsAudienceType }, optional: true, nullable: false
    end
  end
end
