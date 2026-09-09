# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by a specific date field.
    class SegmentTypeItemDate < Internal::Types::Model
      field :extra, -> { String }, optional: true, nullable: false

      field :field, -> { Mailchimp::Types::SegmentTypeItemDateField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemDateOp }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
