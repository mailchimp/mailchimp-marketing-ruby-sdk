# frozen_string_literal: true

module Mailchimp
  module Types
    module CampaignsDeliveryStatusStatus
      extend Mailchimp::Internal::Types::Enum

      DELIVERING = "delivering"
      DELIVERED = "delivered"
      CANCELING = "canceling"
      CANCELED = "canceled"
    end
  end
end
