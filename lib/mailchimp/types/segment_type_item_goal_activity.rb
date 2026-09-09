# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by Goal activity.
    class SegmentTypeItemGoalActivity < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemGoalActivityField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemGoalActivityOp }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
