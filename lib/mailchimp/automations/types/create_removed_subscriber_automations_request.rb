# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      class CreateRemovedSubscriberAutomationsRequest < Internal::Types::Model
        field :workflow_id, -> { String }, optional: false, nullable: false

        field :email_address, -> { String }, optional: false, nullable: false
      end
    end
  end
end
