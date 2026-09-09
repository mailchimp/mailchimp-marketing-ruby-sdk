# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by when people subscribed.
    class SegmentTypeItemNewSubscribers < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemNewSubscribersField }, optional: true, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemNewSubscribersOp }, optional: true, nullable: false

      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
