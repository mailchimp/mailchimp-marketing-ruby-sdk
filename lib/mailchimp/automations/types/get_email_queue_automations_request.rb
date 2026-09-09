# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      class GetEmailQueueAutomationsRequest < Internal::Types::Model
        field :workflow_id, -> { String }, optional: false, nullable: false

        field :workflow_email_id, -> { String }, optional: false, nullable: false

        field :subscriber_hash, -> { String }, optional: false, nullable: false
      end
    end
  end
end
