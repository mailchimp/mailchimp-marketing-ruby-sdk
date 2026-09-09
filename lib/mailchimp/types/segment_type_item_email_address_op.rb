# frozen_string_literal: true

module Mailchimp
  module Types
    module SegmentTypeItemEmailAddressOp
      extend Mailchimp::Internal::Types::Enum

      IS = "is"
      NOT = "not"
      CONTAINS = "contains"
      NOTCONTAIN = "notcontain"
      STARTS = "starts"
      ENDS = "ends"
      GREATER = "greater"
      LESS = "less"
    end
  end
end
