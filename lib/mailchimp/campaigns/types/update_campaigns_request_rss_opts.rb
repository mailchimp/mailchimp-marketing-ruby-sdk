# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      # [RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options for a campaign.
      class UpdateCampaignsRequestRssOpts < Internal::Types::Model
        field :constrain_rss_img, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :feed_url, -> { String }, optional: true, nullable: false

        field :frequency, -> { Mailchimp::Campaigns::Types::UpdateCampaignsRequestRssOptsFrequency }, optional: true, nullable: false

        field :schedule, -> { Mailchimp::Campaigns::Types::UpdateCampaignsRequestRssOptsSchedule }, optional: true, nullable: false
      end
    end
  end
end
