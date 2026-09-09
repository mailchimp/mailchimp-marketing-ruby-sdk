# frozen_string_literal: true

module Mailchimp
  module Types
    # Audience settings
    class ReportingFacebookAdAudience < Internal::Types::Model
      field :email_source, -> { Mailchimp::Types::ReportingFacebookAdAudienceEmailSource }, optional: true, nullable: false

      field :include_source_in_target, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :lookalike_country_code, -> { String }, optional: true, nullable: false

      field :source_type, -> { Mailchimp::Types::ReportingFacebookAdAudienceSourceType }, optional: true, nullable: false

      field :targeting_specs, -> { Mailchimp::Types::ReportingFacebookAdAudienceTargetingSpecs }, optional: true, nullable: false

      field :type, -> { Mailchimp::Types::ReportingFacebookAdAudienceType }, optional: true, nullable: false
    end
  end
end
