# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by poll activity.
    class SegmentTypeItemCampaignPoll < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemCampaignPollField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemCampaignPollOp }, optional: false, nullable: false

      field :value, -> { Integer }, optional: false, nullable: false
    end
  end
end
