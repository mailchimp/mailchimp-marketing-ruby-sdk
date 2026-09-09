# frozen_string_literal: true

module Mailchimp
  module Types
    module SegmentTypeItemEcommNumberOp
      extend Mailchimp::Internal::Types::Enum

      IS = "is"
      NOT = "not"
      GREATER = "greater"
      LESS = "less"
    end
  end
end
