# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      module ListCampaignsRequestStatus
        extend Mailchimp::Internal::Types::Enum

        SAVE = "save"
        PAUSED = "paused"
        SCHEDULE = "schedule"
        SENDING = "sending"
        SENT = "sent"
      end
    end
  end
end
