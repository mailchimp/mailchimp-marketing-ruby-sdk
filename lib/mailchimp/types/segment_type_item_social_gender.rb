# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by listed gender in Social Profiles data.
    class SegmentTypeItemSocialGender < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemSocialGenderField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemSocialGenderOp }, optional: false, nullable: false

      field :value, -> { Mailchimp::Types::SegmentTypeItemSocialGenderValue }, optional: false, nullable: false
    end
  end
end
