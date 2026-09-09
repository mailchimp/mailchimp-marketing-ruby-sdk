# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      # The settings for the Automation workflow.
      class CreateAutomationsRequestSettings < Internal::Types::Model
        field :from_name, -> { String }, optional: true, nullable: false

        field :reply_to, -> { String }, optional: true, nullable: false
      end
    end
  end
end
