# frozen_string_literal: true

module Mailchimp
  module Types
    module AutomationWorkflowTriggerSettingsRuntimeHoursType
      extend Mailchimp::Internal::Types::Enum

      SEND_ASAP = "send_asap"
      SEND_BETWEEN = "send_between"
      SEND_AT = "send_at"
    end
  end
end
