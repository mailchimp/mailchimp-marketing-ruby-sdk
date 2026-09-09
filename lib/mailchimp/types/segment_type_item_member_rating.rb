# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by member rating.
    class SegmentTypeItemMemberRating < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemMemberRatingField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemMemberRatingOp }, optional: false, nullable: false

      field :value, -> { Mailchimp::Types::SegmentTypeItemMemberRatingValue }, optional: false, nullable: false
    end
  end
end
