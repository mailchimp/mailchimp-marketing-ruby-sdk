# frozen_string_literal: true

module Mailchimp
  module Types
    module AutomationWorkflowEmailStatus
      extend Mailchimp::Internal::Types::Enum

      SAVE = "save"
      PAUSED = "paused"
      SENDING = "sending"
    end
  end
end
