# frozen_string_literal: true

module Mailchimp
  module Types
    module SegmentTypeItemAddressMergeOp
      extend Mailchimp::Internal::Types::Enum

      CONTAINS = "contains"
      NOTCONTAIN = "notcontain"
      BLANK = "blank"
      BLANK_NOT = "blank_not"
    end
  end
end
