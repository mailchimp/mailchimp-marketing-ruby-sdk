# frozen_string_literal: true

module Mailchimp
  module Types
    module SegmentTypeItemSurveyMonkeyOp
      extend Mailchimp::Internal::Types::Enum

      STARTED = "started"
      COMPLETED = "completed"
      NOT_STARTED = "not_started"
      NOT_COMPLETED = "not_completed"
    end
  end
end
