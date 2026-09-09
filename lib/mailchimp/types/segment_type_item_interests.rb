# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by an interest group merge field.
    class SegmentTypeItemInterests < Internal::Types::Model
      field :field, -> { String }, optional: true, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemInterestsOp }, optional: true, nullable: false

      field :value, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
