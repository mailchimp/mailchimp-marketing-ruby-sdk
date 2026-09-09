# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      module CreateAutomationsRequestTriggerSettingsWorkflowType
        extend Mailchimp::Internal::Types::Enum

        ABANDONED_BROWSE = "abandonedBrowse"
        ABANDONED_CART = "abandonedCart"
        EMAIL_FOLLOWUP = "emailFollowup"
        SINGLE_WELCOME = "singleWelcome"
      end
    end
  end
end
