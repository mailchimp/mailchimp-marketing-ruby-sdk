# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by email address.
    class SegmentTypeItemEmailAddress < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemEmailAddressField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemEmailAddressOp }, optional: false, nullable: false

      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
