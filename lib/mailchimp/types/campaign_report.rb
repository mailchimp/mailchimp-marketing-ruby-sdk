# frozen_string_literal: true

module Mailchimp
  module Types
    # Report details about a sent campaign.
    class CampaignReport < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::CampaignReportLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :ab_split, -> { Mailchimp::Types::CampaignReportAbSplit }, optional: true, nullable: false

      field :abuse_reports, -> { Integer }, optional: true, nullable: false

      field :bounces, -> { Mailchimp::Types::CampaignReportBounces }, optional: true, nullable: false

      field :campaign_title, -> { String }, optional: true, nullable: false

      field :clicks, -> { Mailchimp::Types::CampaignReportClicks }, optional: true, nullable: false

      field :delivery_status, -> { Mailchimp::Types::CampaignReportDeliveryStatus }, optional: true, nullable: false

      field :ecommerce, -> { Mailchimp::Types::CampaignReportEcommerce }, optional: true, nullable: false

      field :emails_sent, -> { Integer }, optional: true, nullable: false

      field :facebook_likes, -> { Mailchimp::Types::CampaignReportFacebookLikes }, optional: true, nullable: false

      field :forwards, -> { Mailchimp::Types::CampaignReportForwards }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :industry_stats, -> { Mailchimp::Types::CampaignReportIndustryStats }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :list_is_active, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :list_name, -> { String }, optional: true, nullable: false

      field :list_stats, -> { Mailchimp::Types::CampaignReportListStats }, optional: true, nullable: false

      field :opens, -> { Mailchimp::Types::CampaignReportOpens }, optional: true, nullable: false

      field :preview_text, -> { String }, optional: true, nullable: false

      field :rss_last_send, -> { String }, optional: true, nullable: false

      field :send_time, -> { String }, optional: true, nullable: false

      field :share_report, -> { Mailchimp::Types::CampaignReportShareReport }, optional: true, nullable: false

      field :subject_line, -> { String }, optional: true, nullable: false

      field :timeseries, -> { Internal::Types::Array[Mailchimp::Types::CampaignReportTimeseriesItem] }, optional: true, nullable: false

      field :timewarp, -> { Internal::Types::Array[Mailchimp::Types::CampaignReportTimewarpItem] }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false

      field :unsubscribed, -> { Integer }, optional: true, nullable: false
    end
  end
end
