# frozen_string_literal: true

module Mailchimp
  module Types
    # The tracking options for the Automation.
    class AutomationWorkflowTracking < Internal::Types::Model
      field :capsule, -> { Mailchimp::Types::AutomationWorkflowTrackingCapsule }, optional: true, nullable: false

      field :clicktale, -> { String }, optional: true, nullable: false

      field :ecomm360, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :goal_tracking, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :google_analytics, -> { String }, optional: true, nullable: false

      field :html_clicks, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :opens, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :salesforce, -> { Mailchimp::Types::AutomationWorkflowTrackingSalesforce }, optional: true, nullable: false

      field :text_clicks, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
