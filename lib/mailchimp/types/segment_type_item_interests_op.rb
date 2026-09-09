# frozen_string_literal: true

module Mailchimp
  module Types
    module SegmentTypeItemInterestsOp
      extend Mailchimp::Internal::Types::Enum

      INTERESTCONTAINS = "interestcontains"
      INTERESTCONTAINSALL = "interestcontainsall"
      INTERESTNOTCONTAINS = "interestnotcontains"
    end
  end
end
