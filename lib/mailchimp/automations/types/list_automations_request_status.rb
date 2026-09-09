# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      module ListAutomationsRequestStatus
        extend Mailchimp::Internal::Types::Enum

        SAVE = "save"
        PAUSED = "paused"
        SENDING = "sending"
      end
    end
  end
end
