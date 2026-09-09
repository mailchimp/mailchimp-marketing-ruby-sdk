# frozen_string_literal: true

module Mailchimp
  module Types
    module SegmentTypeItemTextMergeOp
      extend Mailchimp::Internal::Types::Enum

      IS = "is"
      NOT = "not"
      CONTAINS = "contains"
      NOTCONTAIN = "notcontain"
      STARTS = "starts"
      ENDS = "ends"
      GREATER = "greater"
      LESS = "less"
      BLANK = "blank"
      BLANK_NOT = "blank_not"
    end
  end
end
