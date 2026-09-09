# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      class CreateCampaignsRequest < Internal::Types::Model
        field :content_type, -> { Mailchimp::Campaigns::Types::CreateCampaignsRequestContentType }, optional: true, nullable: false

        field :recipients, -> { Mailchimp::Campaigns::Types::CreateCampaignsRequestRecipients }, optional: true, nullable: false

        field :rss_opts, -> { Mailchimp::Campaigns::Types::CreateCampaignsRequestRssOpts }, optional: true, nullable: false

        field :settings, -> { Mailchimp::Campaigns::Types::CreateCampaignsRequestSettings }, optional: true, nullable: false

        field :social_card, -> { Mailchimp::Campaigns::Types::CreateCampaignsRequestSocialCard }, optional: true, nullable: false

        field :tracking, -> { Mailchimp::Types::CampaignTrackingOptions }, optional: true, nullable: false

        field :type, -> { Mailchimp::Campaigns::Types::CreateCampaignsRequestType }, optional: false, nullable: false

        field :variate_settings, -> { Mailchimp::Campaigns::Types::CreateCampaignsRequestVariateSettings }, optional: true, nullable: false
      end
    end
  end
end
