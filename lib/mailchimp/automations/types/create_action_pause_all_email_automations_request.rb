# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      class CreateActionPauseAllEmailAutomationsRequest < Internal::Types::Model
        field :workflow_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
