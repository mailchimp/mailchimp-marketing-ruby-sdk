# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by predicted age.
    class SegmentTypeItemPredictedAge < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemPredictedAgeField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemPredictedAgeOp }, optional: false, nullable: false

      field :value, -> { Mailchimp::Types::SegmentTypeItemPredictedAgeValue }, optional: false, nullable: false
    end
  end
end
