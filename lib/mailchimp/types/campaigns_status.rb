# frozen_string_literal: true

module Mailchimp
  module Types
    module CampaignsStatus
      extend Mailchimp::Internal::Types::Enum

      SAVE = "save"
      PAUSED = "paused"
      SCHEDULE = "schedule"
      SENDING = "sending"
      SENT = "sent"
      CANCELED = "canceled"
      CANCELING = "canceling"
      ARCHIVED = "archived"
    end
  end
end
