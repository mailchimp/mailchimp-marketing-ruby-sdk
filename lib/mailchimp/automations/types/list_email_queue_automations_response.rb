# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      # An automation workflow
      class ListEmailQueueAutomationsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Internal::Types::Array[Mailchimp::Automations::Types::ListEmailQueueAutomationsResponseLinksItemItem]] }, optional: true, nullable: false, api_name: "_links"

        field :email_id, -> { String }, optional: true, nullable: false

        field :queue, -> { Internal::Types::Array[Mailchimp::Automations::Types::ListEmailQueueAutomationsResponseQueueItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false

        field :workflow_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
