# frozen_string_literal: true

module Mailchimp
  module LandingPages
    module Types
      # The tracking settings applied to this landing page.
      class CreateLandingPagesRequestTracking < Internal::Types::Model
        field :enable_restricted_data_processing, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :track_with_mailchimp, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
