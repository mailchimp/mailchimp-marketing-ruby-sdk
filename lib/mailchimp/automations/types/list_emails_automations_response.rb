# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      # A summary of the emails in an Automation workflow.
      class ListEmailsAutomationsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Internal::Types::Array[Mailchimp::Automations::Types::ListEmailsAutomationsResponseLinksItemItem]] }, optional: true, nullable: false, api_name: "_links"

        field :emails, -> { Internal::Types::Array[Mailchimp::Types::AutomationWorkflowEmail] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
