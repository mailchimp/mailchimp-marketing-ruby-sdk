# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by a given date merge field.
    class SegmentTypeItemDateMerge < Internal::Types::Model
      field :field, -> { String }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemDateMergeOp }, optional: false, nullable: false

      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
