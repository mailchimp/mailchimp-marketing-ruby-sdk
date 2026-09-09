# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      module UpdateEmailAutomationsRequestDelayType
        extend Mailchimp::Internal::Types::Enum

        NOW = "now"
        DAY = "day"
        HOUR = "hour"
        WEEK = "week"
      end
    end
  end
end
