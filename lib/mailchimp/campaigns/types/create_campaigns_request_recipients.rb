# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      # List settings for the campaign.
      class CreateCampaignsRequestRecipients < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :segment_opts, -> { Mailchimp::Campaigns::Types::CreateCampaignsRequestRecipientsSegmentOpts }, optional: true, nullable: false
      end
    end
  end
end
