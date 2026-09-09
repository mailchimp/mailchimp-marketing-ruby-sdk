# frozen_string_literal: true

module Mailchimp
  module Types
    # A workflow's runtime settings for an Automation.
    class AutomationWorkflowEmailTriggerSettingsRuntime < Internal::Types::Model
      field :days, -> { Internal::Types::Array[Mailchimp::Types::AutomationWorkflowEmailTriggerSettingsRuntimeDaysItem] }, optional: true, nullable: false

      field :hours, -> { Mailchimp::Types::AutomationWorkflowEmailTriggerSettingsRuntimeHours }, optional: true, nullable: false
    end
  end
end
