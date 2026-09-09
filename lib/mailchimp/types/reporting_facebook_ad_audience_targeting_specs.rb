# frozen_string_literal: true

module Mailchimp
  module Types
    class ReportingFacebookAdAudienceTargetingSpecs < Internal::Types::Model
      field :gender, -> { Integer }, optional: true, nullable: false

      field :interests, -> { Internal::Types::Array[Mailchimp::Types::ReportingFacebookAdAudienceTargetingSpecsInterestsItem] }, optional: true, nullable: false

      field :locations, -> { Mailchimp::Types::ReportingFacebookAdAudienceTargetingSpecsLocations }, optional: true, nullable: false

      field :max_age, -> { Integer }, optional: true, nullable: false

      field :min_age, -> { Integer }, optional: true, nullable: false
    end
  end
end
