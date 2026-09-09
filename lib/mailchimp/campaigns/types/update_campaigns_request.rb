# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      class UpdateCampaignsRequest < Internal::Types::Model
        field :campaign_id, -> { String }, optional: false, nullable: false

        field :recipients, -> { Mailchimp::Campaigns::Types::UpdateCampaignsRequestRecipients }, optional: true, nullable: false

        field :rss_opts, -> { Mailchimp::Campaigns::Types::UpdateCampaignsRequestRssOpts }, optional: true, nullable: false

        field :settings, -> { Mailchimp::Campaigns::Types::UpdateCampaignsRequestSettings }, optional: true, nullable: false

        field :social_card, -> { Mailchimp::Campaigns::Types::UpdateCampaignsRequestSocialCard }, optional: true, nullable: false

        field :tracking, -> { Mailchimp::Types::CampaignTrackingOptions }, optional: true, nullable: false

        field :variate_settings, -> { Mailchimp::Campaigns::Types::UpdateCampaignsRequestVariateSettings }, optional: true, nullable: false
      end
    end
  end
end
