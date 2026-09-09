# frozen_string_literal: true

module Mailchimp
  module Types
    class FacebookAdsAudienceTargetingSpecsLocations < Internal::Types::Model
      field :cities, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :countries, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :regions, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :zips, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
