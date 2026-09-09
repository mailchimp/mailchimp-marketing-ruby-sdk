# frozen_string_literal: true

module Mailchimp
  module Types
    module SegmentTypeItemSelectMergeOp
      extend Mailchimp::Internal::Types::Enum

      IS = "is"
      NOT = "not"
      BLANK = "blank"
      BLANK_NOT = "blank_not"
      NOTCONTAIN = "notcontain"
      CONTAINS = "contains"
    end
  end
end
