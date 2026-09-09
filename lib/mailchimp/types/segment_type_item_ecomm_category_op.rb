# frozen_string_literal: true

module Mailchimp
  module Types
    module SegmentTypeItemEcommCategoryOp
      extend Mailchimp::Internal::Types::Enum

      IS = "is"
      NOT = "not"
      CONTAINS = "contains"
      NOTCONTAIN = "notcontain"
      STARTS = "starts"
      ENDS = "ends"
    end
  end
end
