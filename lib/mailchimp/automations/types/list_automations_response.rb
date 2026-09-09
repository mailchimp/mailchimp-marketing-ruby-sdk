# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      # An array of objects, each representing an Automation workflow.
      class ListAutomationsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Automations::Types::ListAutomationsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :automations, -> { Internal::Types::Array[Mailchimp::Types::AutomationWorkflow] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
