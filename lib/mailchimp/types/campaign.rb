# frozen_string_literal: true

module Mailchimp
  module Types
    # A summary of an individual campaign's settings and content.
    class Campaign < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::CampaignLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :ab_split_opts, -> { Mailchimp::Types::AbTestingOptions }, optional: true, nullable: false

      field :archive_url, -> { String }, optional: true, nullable: false

      field :content_type, -> { String }, optional: true, nullable: false

      field :create_time, -> { String }, optional: true, nullable: false

      field :delivery_status, -> { Mailchimp::Types::CampaignDeliveryStatus }, optional: true, nullable: false

      field :emails_sent, -> { Integer }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :long_archive_url, -> { String }, optional: true, nullable: false

      field :needs_block_refresh, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :parent_campaign_id, -> { String }, optional: true, nullable: false

      field :recipients, -> { Mailchimp::Types::CampaignRecipients }, optional: true, nullable: false

      field :report_summary, -> { Mailchimp::Types::CampaignReportSummary }, optional: true, nullable: false

      field :resendable, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :rss_opts, -> { Mailchimp::Types::CampaignRssOpts }, optional: true, nullable: false

      field :send_time, -> { String }, optional: true, nullable: false

      field :settings, -> { Mailchimp::Types::CampaignSettings }, optional: true, nullable: false

      field :social_card, -> { Mailchimp::Types::CampaignSocialCard }, optional: true, nullable: false

      field :status, -> { Mailchimp::Types::CampaignStatus }, optional: true, nullable: false

      field :tracking, -> { Mailchimp::Types::CampaignTrackingOptions }, optional: true, nullable: false

      field :type, -> { Mailchimp::Types::CampaignType }, optional: false, nullable: false

      field :variate_settings, -> { Mailchimp::Types::CampaignVariateSettings }, optional: true, nullable: false

      field :web_id, -> { Integer }, optional: true, nullable: false
    end
  end
end
