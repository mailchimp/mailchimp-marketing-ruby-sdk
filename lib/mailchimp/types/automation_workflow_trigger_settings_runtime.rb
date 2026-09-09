# frozen_string_literal: true

module Mailchimp
  module Types
    # A workflow's runtime settings for an Automation.
    class AutomationWorkflowTriggerSettingsRuntime < Internal::Types::Model
      field :days, -> { Internal::Types::Array[Mailchimp::Types::AutomationWorkflowTriggerSettingsRuntimeDaysItem] }, optional: true, nullable: false

      field :hours, -> { Mailchimp::Types::AutomationWorkflowTriggerSettingsRuntimeHours }, optional: true, nullable: false
    end
  end
end
