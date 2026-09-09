# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by an address-type merge field within a given distance.
    class SegmentTypeItemZipMerge < Internal::Types::Model
      field :extra, -> { String }, optional: false, nullable: false

      field :field, -> { String }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemZipMergeOp }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
