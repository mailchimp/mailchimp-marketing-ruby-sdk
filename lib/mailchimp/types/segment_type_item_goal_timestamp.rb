# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by most recent interaction with a website.
    class SegmentTypeItemGoalTimestamp < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemGoalTimestampField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemGoalTimestampOp }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
