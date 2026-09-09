# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by a given text or number merge field.
    class SegmentTypeItemTextMerge < Internal::Types::Model
      field :field, -> { String }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemTextMergeOp }, optional: false, nullable: false

      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
