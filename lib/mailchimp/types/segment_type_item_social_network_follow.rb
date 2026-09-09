# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by social network in Social Profiles data.
    class SegmentTypeItemSocialNetworkFollow < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemSocialNetworkFollowField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemSocialNetworkFollowOp }, optional: false, nullable: false

      field :value, -> { Mailchimp::Types::SegmentTypeItemSocialNetworkFollowValue }, optional: false, nullable: false
    end
  end
end
