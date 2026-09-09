# frozen_string_literal: true

module Mailchimp
  module Types
    # The hours an Automation workflow can send.
    class AutomationWorkflowEmailTriggerSettingsRuntimeHours < Internal::Types::Model
      field :type, -> { Mailchimp::Types::AutomationWorkflowEmailTriggerSettingsRuntimeHoursType }, optional: false, nullable: false
    end
  end
end
