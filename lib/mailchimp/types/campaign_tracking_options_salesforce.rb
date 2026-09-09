# frozen_string_literal: true

module Mailchimp
  module Types
    # Deprecated
    class CampaignTrackingOptionsSalesforce < Internal::Types::Model
      field :campaign, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :notes, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
