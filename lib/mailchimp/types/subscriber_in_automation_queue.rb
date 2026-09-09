# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about subscribers in an Automation email queue.
    class SubscriberInAutomationQueue < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Internal::Types::Array[Mailchimp::Types::SubscriberInAutomationQueueLinksItemItem]] }, optional: true, nullable: false, api_name: "_links"

      field :email_address, -> { String }, optional: true, nullable: false

      field :email_id, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :list_is_active, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :next_send, -> { String }, optional: true, nullable: false

      field :workflow_id, -> { String }, optional: true, nullable: false
    end
  end
end
