# frozen_string_literal: true

module Mailchimp
  module Types
    module SegmentTypeItemFuzzySegmentOp
      extend Mailchimp::Internal::Types::Enum

      FUZZY_IS = "fuzzy_is"
      FUZZY_NOT = "fuzzy_not"
    end
  end
end
