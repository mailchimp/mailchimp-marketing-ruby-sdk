# frozen_string_literal: true

module Mailchimp
  module Types
    # A summary of a subscriber removed from an Automation workflow.
    class SubscriberRemovedFromAutomationWorkflow < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Internal::Types::Array[Mailchimp::Types::SubscriberRemovedFromAutomationWorkflowLinksItemItem]] }, optional: true, nullable: false, api_name: "_links"

      field :email_address, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :workflow_id, -> { String }, optional: true, nullable: false
    end
  end
end
