# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      # Information about subscribers in an Automation email queue.
      class ListEmailQueueAutomationsResponseQueueItem < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Internal::Types::Array[Mailchimp::Automations::Types::ListEmailQueueAutomationsResponseQueueItemLinksItemItem]] }, optional: true, nullable: false, api_name: "_links"

        field :email_address, -> { String }, optional: false, nullable: false

        field :email_id, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :list_id, -> { String }, optional: true, nullable: false

        field :next_send, -> { String }, optional: true, nullable: false

        field :workflow_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
