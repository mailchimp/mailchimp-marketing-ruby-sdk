# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by an address-type merge field.
    class SegmentTypeItemAddressMerge < Internal::Types::Model
      field :field, -> { String }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemAddressMergeOp }, optional: false, nullable: false

      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
