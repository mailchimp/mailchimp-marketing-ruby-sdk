# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by whether someone has purchased anything.
    class SegmentTypeItemEcommPurchased < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemEcommPurchasedField }, optional: true, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemEcommPurchasedOp }, optional: true, nullable: false
    end
  end
end
