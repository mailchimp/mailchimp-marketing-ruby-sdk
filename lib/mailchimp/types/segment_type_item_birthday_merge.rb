# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by a contact's birthday.
    class SegmentTypeItemBirthdayMerge < Internal::Types::Model
      field :field, -> { String }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemBirthdayMergeOp }, optional: false, nullable: false

      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
