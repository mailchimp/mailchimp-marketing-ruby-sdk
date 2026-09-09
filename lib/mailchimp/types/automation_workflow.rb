# frozen_string_literal: true

module Mailchimp
  module Types
    # A summary of an individual Automation workflow's settings and content.
    class AutomationWorkflow < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::AutomationWorkflowLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :create_time, -> { String }, optional: true, nullable: false

      field :emails_sent, -> { Integer }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :recipients, -> { Mailchimp::Types::AutomationWorkflowRecipients }, optional: true, nullable: false

      field :report_summary, -> { Mailchimp::Types::AutomationWorkflowReportSummary }, optional: true, nullable: false

      field :settings, -> { Mailchimp::Types::AutomationWorkflowSettings }, optional: true, nullable: false

      field :start_time, -> { String }, optional: true, nullable: false

      field :status, -> { Mailchimp::Types::AutomationWorkflowStatus }, optional: true, nullable: false

      field :tracking, -> { Mailchimp::Types::AutomationWorkflowTracking }, optional: true, nullable: false

      field :trigger_settings, -> { Mailchimp::Types::AutomationWorkflowTriggerSettings }, optional: true, nullable: false
    end
  end
end
