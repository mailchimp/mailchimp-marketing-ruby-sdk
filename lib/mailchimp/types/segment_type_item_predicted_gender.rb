# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by predicted gender.
    class SegmentTypeItemPredictedGender < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemPredictedGenderField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemPredictedGenderOp }, optional: false, nullable: false

      field :value, -> { Mailchimp::Types::SegmentTypeItemPredictedGenderValue }, optional: false, nullable: false
    end
  end
end
