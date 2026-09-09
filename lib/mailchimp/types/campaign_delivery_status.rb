# frozen_string_literal: true

module Mailchimp
  module Types
    # Updates on campaigns in the process of sending.
    class CampaignDeliveryStatus < Internal::Types::Model
      field :can_cancel, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :emails_canceled, -> { Integer }, optional: true, nullable: false

      field :emails_sent, -> { Integer }, optional: true, nullable: false

      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :status, -> { Mailchimp::Types::CampaignDeliveryStatusStatus }, optional: true, nullable: false
    end
  end
end
