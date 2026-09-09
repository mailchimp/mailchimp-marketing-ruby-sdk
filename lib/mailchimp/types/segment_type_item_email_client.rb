# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by use of a particular email client.
    class SegmentTypeItemEmailClient < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemEmailClientField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemEmailClientOp }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
