# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by similar subscribers.
    class SegmentTypeItemFuzzySegment < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemFuzzySegmentField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemFuzzySegmentOp }, optional: false, nullable: false

      field :value, -> { Mailchimp::Types::SegmentTypeItemFuzzySegmentValue }, optional: false, nullable: false
    end
  end
end
