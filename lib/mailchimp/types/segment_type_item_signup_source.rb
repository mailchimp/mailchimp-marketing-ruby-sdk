# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by signup source.
    class SegmentTypeItemSignupSource < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemSignupSourceField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemSignupSourceOp }, optional: false, nullable: false

      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
