# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      class UpdateEmailAutomationsRequest < Internal::Types::Model
        field :workflow_id, -> { String }, optional: false, nullable: false

        field :workflow_email_id, -> { String }, optional: false, nullable: false

        field :delay, -> { Mailchimp::Automations::Types::UpdateEmailAutomationsRequestDelay }, optional: true, nullable: false

        field :settings, -> { Mailchimp::Automations::Types::UpdateEmailAutomationsRequestSettings }, optional: true, nullable: false
      end
    end
  end
end
