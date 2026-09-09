# frozen_string_literal: true

module Mailchimp
  module Types
    # The delay settings for an Automation email.
    class AutomationWorkflowEmailDelay < Internal::Types::Model
      field :action, -> { Mailchimp::Types::AutomationWorkflowEmailDelayAction }, optional: true, nullable: false

      field :action_description, -> { String }, optional: true, nullable: false

      field :amount, -> { Integer }, optional: true, nullable: false

      field :direction, -> { Mailchimp::Types::AutomationWorkflowEmailDelayDirection }, optional: true, nullable: false

      field :full_description, -> { String }, optional: true, nullable: false

      field :type, -> { Mailchimp::Types::AutomationWorkflowEmailDelayType }, optional: true, nullable: false
    end
  end
end
