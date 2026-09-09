# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      # Trigger settings for the Automation.
      class CreateAutomationsRequestTriggerSettings < Internal::Types::Model
        field :workflow_type, -> { Mailchimp::Automations::Types::CreateAutomationsRequestTriggerSettingsWorkflowType }, optional: false, nullable: false
      end
    end
  end
end
