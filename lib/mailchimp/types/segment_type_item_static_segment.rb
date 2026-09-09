# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by a given static segment.
    class SegmentTypeItemStaticSegment < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemStaticSegmentField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemStaticSegmentOp }, optional: false, nullable: false

      field :value, -> { Mailchimp::Types::SegmentTypeItemStaticSegmentValue }, optional: false, nullable: false
    end
  end
end
