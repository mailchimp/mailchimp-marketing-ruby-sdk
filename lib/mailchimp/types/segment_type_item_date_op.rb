# frozen_string_literal: true

module Mailchimp
  module Types
    module SegmentTypeItemDateOp
      extend Mailchimp::Internal::Types::Enum

      GREATER = "greater"
      LESS = "less"
      IS = "is"
      NOT = "not"
      BLANK = "blank"
      BLANK_NOT = "blank_not"
      WITHIN = "within"
      NOTWITHIN = "notwithin"
    end
  end
end
