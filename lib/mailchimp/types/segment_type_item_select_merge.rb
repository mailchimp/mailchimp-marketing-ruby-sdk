# frozen_string_literal: true

module Mailchimp
  module Types
    # An individual segment condition
    class SegmentTypeItemSelectMerge < Internal::Types::Model
      field :field, -> { String }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemSelectMergeOp }, optional: false, nullable: false

      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
