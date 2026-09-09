# frozen_string_literal: true

module Mailchimp
  module Types
    # [RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options for a campaign.
    class CampaignsRssOpts < Internal::Types::Model
      field :constrain_rss_img, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :feed_url, -> { String }, optional: true, nullable: false

      field :frequency, -> { Mailchimp::Types::CampaignsRssOptsFrequency }, optional: true, nullable: false

      field :last_sent, -> { String }, optional: true, nullable: false

      field :schedule, -> { Mailchimp::Types::CampaignsRssOptsSchedule }, optional: true, nullable: false
    end
  end
end
