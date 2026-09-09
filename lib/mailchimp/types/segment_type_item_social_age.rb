# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by age ranges in Social Profiles data.
    class SegmentTypeItemSocialAge < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemSocialAgeField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemSocialAgeOp }, optional: false, nullable: false

      field :value, -> { Mailchimp::Types::SegmentTypeItemSocialAgeValue }, optional: false, nullable: false
    end
  end
end
