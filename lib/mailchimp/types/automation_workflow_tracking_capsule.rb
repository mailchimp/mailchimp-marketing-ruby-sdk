# frozen_string_literal: true

module Mailchimp
  module Types
    # Deprecated
    class AutomationWorkflowTrackingCapsule < Internal::Types::Model
      field :notes, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
