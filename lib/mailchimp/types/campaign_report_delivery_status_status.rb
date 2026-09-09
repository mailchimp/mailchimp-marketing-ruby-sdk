# frozen_string_literal: true

module Mailchimp
  module Types
    module CampaignReportDeliveryStatusStatus
      extend Mailchimp::Internal::Types::Enum

      DELIVERING = "delivering"
      DELIVERED = "delivered"
      CANCELING = "canceling"
      CANCELED = "canceled"
    end
  end
end
