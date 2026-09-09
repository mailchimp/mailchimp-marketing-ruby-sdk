# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      # The delay settings for an automation email.
      class UpdateEmailAutomationsRequestDelay < Internal::Types::Model
        field :action, -> { Mailchimp::Automations::Types::UpdateEmailAutomationsRequestDelayAction }, optional: false, nullable: false

        field :amount, -> { Integer }, optional: true, nullable: false

        field :direction, -> { Mailchimp::Automations::Types::UpdateEmailAutomationsRequestDelayDirection }, optional: true, nullable: false

        field :type, -> { Mailchimp::Automations::Types::UpdateEmailAutomationsRequestDelayType }, optional: true, nullable: false
      end
    end
  end
end
