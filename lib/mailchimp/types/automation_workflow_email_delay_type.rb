# frozen_string_literal: true

module Mailchimp
  module Types
    module AutomationWorkflowEmailDelayType
      extend Mailchimp::Internal::Types::Enum

      NOW = "now"
      DAY = "day"
      HOUR = "hour"
      WEEK = "week"
    end
  end
end
