# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by influence rating in Social Profiles data.
    class SegmentTypeItemSocialInfluence < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemSocialInfluenceField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemSocialInfluenceOp }, optional: false, nullable: false

      field :value, -> { Integer }, optional: false, nullable: false
    end
  end
end
