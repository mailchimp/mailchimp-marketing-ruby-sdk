# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      # [RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options, specific to an RSS campaign.
      class CreateCampaignsRequestRssOpts < Internal::Types::Model
        field :constrain_rss_img, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :feed_url, -> { String }, optional: false, nullable: false

        field :frequency, -> { Mailchimp::Campaigns::Types::CreateCampaignsRequestRssOptsFrequency }, optional: false, nullable: false

        field :schedule, -> { Mailchimp::Campaigns::Types::CreateCampaignsRequestRssOptsSchedule }, optional: true, nullable: false
      end
    end
  end
end
