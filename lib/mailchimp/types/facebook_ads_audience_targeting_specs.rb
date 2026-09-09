# frozen_string_literal: true

module Mailchimp
  module Types
    class FacebookAdsAudienceTargetingSpecs < Internal::Types::Model
      field :gender, -> { Integer }, optional: true, nullable: false

      field :interests, -> { Internal::Types::Array[Mailchimp::Types::FacebookAdsAudienceTargetingSpecsInterestsItem] }, optional: true, nullable: false

      field :locations, -> { Mailchimp::Types::FacebookAdsAudienceTargetingSpecsLocations }, optional: true, nullable: false

      field :max_age, -> { Integer }, optional: true, nullable: false

      field :min_age, -> { Integer }, optional: true, nullable: false
    end
  end
end
