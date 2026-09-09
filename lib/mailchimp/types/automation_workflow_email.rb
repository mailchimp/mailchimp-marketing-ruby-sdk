# frozen_string_literal: true

module Mailchimp
  module Types
    # A summary of an individual Automation workflow email.
    class AutomationWorkflowEmail < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::AutomationWorkflowEmailLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :archive_url, -> { String }, optional: true, nullable: false

      field :content_type, -> { String }, optional: true, nullable: false

      field :create_time, -> { String }, optional: true, nullable: false

      field :delay, -> { Mailchimp::Types::AutomationWorkflowEmailDelay }, optional: true, nullable: false

      field :emails_sent, -> { Integer }, optional: true, nullable: false

      field :has_logo_merge_tag, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :needs_block_refresh, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :position, -> { Integer }, optional: true, nullable: false

      field :recipients, -> { Mailchimp::Types::AutomationWorkflowEmailRecipients }, optional: true, nullable: false

      field :report_summary, -> { Mailchimp::Types::AutomationWorkflowEmailReportSummary }, optional: true, nullable: false

      field :send_time, -> { String }, optional: true, nullable: false

      field :settings, -> { Mailchimp::Types::AutomationWorkflowEmailSettings }, optional: true, nullable: false

      field :social_card, -> { Mailchimp::Types::AutomationWorkflowEmailSocialCard }, optional: true, nullable: false

      field :start_time, -> { String }, optional: true, nullable: false

      field :status, -> { Mailchimp::Types::AutomationWorkflowEmailStatus }, optional: true, nullable: false

      field :tracking, -> { Mailchimp::Types::AutomationWorkflowEmailTracking }, optional: true, nullable: false

      field :trigger_settings, -> { Mailchimp::Types::AutomationWorkflowEmailTriggerSettings }, optional: true, nullable: false

      field :web_id, -> { Integer }, optional: true, nullable: false

      field :workflow_id, -> { String }, optional: true, nullable: false
    end
  end
end
