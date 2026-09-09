# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      # A summary of the subscribers who were removed from an Automation workflow.
      class ListRemovedSubscribersAutomationsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Internal::Types::Array[Mailchimp::Automations::Types::ListRemovedSubscribersAutomationsResponseLinksItemItem]] }, optional: true, nullable: false, api_name: "_links"

        field :subscribers, -> { Internal::Types::Array[Mailchimp::Types::SubscriberRemovedFromAutomationWorkflow] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false

        field :workflow_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
