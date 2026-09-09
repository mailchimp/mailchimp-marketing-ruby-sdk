# frozen_string_literal: true

module Mailchimp
  module Types
    # Channel settings
    class FacebookAdsChannel < Internal::Types::Model
      field :fb_placement_audience, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :fb_placement_feed, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :ig_placement_feed, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
