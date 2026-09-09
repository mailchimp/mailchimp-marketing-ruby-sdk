# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      # List settings for the Automation.
      class CreateAutomationsRequestRecipients < Internal::Types::Model
        field :list_id, -> { String }, optional: true, nullable: false

        field :store_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
