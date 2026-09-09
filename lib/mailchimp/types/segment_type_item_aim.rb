# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by interaction with a specific campaign.
    class SegmentTypeItemAim < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemAimField }, optional: true, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemAimOp }, optional: true, nullable: false

      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
