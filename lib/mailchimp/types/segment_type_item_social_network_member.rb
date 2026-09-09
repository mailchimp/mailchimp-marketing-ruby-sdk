# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by social network in Social Profiles data.
    class SegmentTypeItemSocialNetworkMember < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemSocialNetworkMemberField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemSocialNetworkMemberOp }, optional: false, nullable: false

      field :value, -> { Mailchimp::Types::SegmentTypeItemSocialNetworkMemberValue }, optional: false, nullable: false
    end
  end
end
