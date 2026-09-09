# frozen_string_literal: true

module Mailchimp
  module Types
    # Deprecated
    class CampaignTrackingOptionsCapsule < Internal::Types::Model
      field :notes, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
