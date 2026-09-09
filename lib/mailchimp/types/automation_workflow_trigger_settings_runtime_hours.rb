# frozen_string_literal: true

module Mailchimp
  module Types
    # The hours an Automation workflow can send.
    class AutomationWorkflowTriggerSettingsRuntimeHours < Internal::Types::Model
      field :type, -> { Mailchimp::Types::AutomationWorkflowTriggerSettingsRuntimeHoursType }, optional: false, nullable: false
    end
  end
end
