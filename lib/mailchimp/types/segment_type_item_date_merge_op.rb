# frozen_string_literal: true

module Mailchimp
  module Types
    module SegmentTypeItemDateMergeOp
      extend Mailchimp::Internal::Types::Enum

      IS = "is"
      NOT = "not"
      LESS = "less"
      BLANK = "blank"
      BLANK_NOT = "blank_not"
      GREATER = "greater"
    end
  end
end
