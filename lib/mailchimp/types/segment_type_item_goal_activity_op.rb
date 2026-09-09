# frozen_string_literal: true

module Mailchimp
  module Types
    module SegmentTypeItemGoalActivityOp
      extend Mailchimp::Internal::Types::Enum

      IS = "is"
      GOAL_NOT = "goal_not"
      CONTAINS = "contains"
      GOAL_NOTCONTAIN = "goal_notcontain"
      STARTS = "starts"
      ENDS = "ends"
    end
  end
end
