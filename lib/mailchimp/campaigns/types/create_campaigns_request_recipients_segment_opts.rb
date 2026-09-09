# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      # An object representing all segmentation options. This object should contain a `saved_segment_id` to use an
      # existing segment, or you can create a new segment by including both `match` and `conditions` options.
      class CreateCampaignsRequestRecipientsSegmentOpts < Internal::Types::Model
        field :conditions, -> { Internal::Types::Array[Mailchimp::Types::SegmentTypeItem] }, optional: true, nullable: false

        field :match, -> { Mailchimp::Campaigns::Types::CreateCampaignsRequestRecipientsSegmentOptsMatch }, optional: true, nullable: false

        field :saved_segment_id, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
