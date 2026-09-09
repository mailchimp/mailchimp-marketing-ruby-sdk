# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      # List settings for the campaign.
      class UpdateCampaignsRequestRecipients < Internal::Types::Model
        field :list_id, -> { String }, optional: true, nullable: false

        field :segment_opts, -> { Mailchimp::Campaigns::Types::UpdateCampaignsRequestRecipientsSegmentOpts }, optional: true, nullable: false
      end
    end
  end
end
