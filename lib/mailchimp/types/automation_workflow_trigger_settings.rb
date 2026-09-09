# frozen_string_literal: true

module Mailchimp
  module Types
    # Available triggers for Automation workflows.
    class AutomationWorkflowTriggerSettings < Internal::Types::Model
      field :runtime, -> { Mailchimp::Types::AutomationWorkflowTriggerSettingsRuntime }, optional: true, nullable: false

      field :workflow_emails_count, -> { Integer }, optional: true, nullable: false

      field :workflow_title, -> { String }, optional: true, nullable: false

      field :workflow_type, -> { Mailchimp::Types::AutomationWorkflowTriggerSettingsWorkflowType }, optional: false, nullable: false
    end
  end
end
