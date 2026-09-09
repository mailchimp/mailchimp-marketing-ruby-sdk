# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      class CreateAutomationsRequest < Internal::Types::Model
        field :recipients, -> { Mailchimp::Automations::Types::CreateAutomationsRequestRecipients }, optional: false, nullable: false

        field :settings, -> { Mailchimp::Automations::Types::CreateAutomationsRequestSettings }, optional: true, nullable: false

        field :trigger_settings, -> { Mailchimp::Automations::Types::CreateAutomationsRequestTriggerSettings }, optional: false, nullable: false
      end
    end
  end
end
