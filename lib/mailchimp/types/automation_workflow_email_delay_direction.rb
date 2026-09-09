# frozen_string_literal: true

module Mailchimp
  module Types
    module AutomationWorkflowEmailDelayDirection
      extend Mailchimp::Internal::Types::Enum

      BEFORE = "before"
      AFTER = "after"
    end
  end
end
