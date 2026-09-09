# frozen_string_literal: true

module Mailchimp
  module Types
    # A summary of an individual campaign's settings and content.
    class Campaigns < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::CampaignsLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :ab_split_opts, -> { Mailchimp::Types::AbTestingOptions }, optional: true, nullable: false

      field :archive_url, -> { String }, optional: true, nullable: false

      field :content_type, -> { Mailchimp::Types::CampaignsContentType }, optional: true, nullable: false

      field :create_time, -> { String }, optional: true, nullable: false

      field :delivery_status, -> { Mailchimp::Types::CampaignsDeliveryStatus }, optional: true, nullable: false

      field :emails_sent, -> { Integer }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :long_archive_url, -> { String }, optional: true, nullable: false

      field :needs_block_refresh, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :parent_campaign_id, -> { String }, optional: true, nullable: false

      field :recipients, -> { Mailchimp::Types::CampaignsRecipients }, optional: true, nullable: false

      field :report_summary, -> { Mailchimp::Types::CampaignsReportSummary }, optional: true, nullable: false

      field :resend_shortcut_eligibility, -> { Mailchimp::Types::CampaignsResendShortcutEligibility }, optional: true, nullable: false

      field :resend_shortcut_usage, -> { Mailchimp::Types::CampaignsResendShortcutUsage }, optional: true, nullable: false

      field :resendable, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :rss_opts, -> { Mailchimp::Types::CampaignsRssOpts }, optional: true, nullable: false

      field :send_time, -> { String }, optional: true, nullable: false

      field :settings, -> { Mailchimp::Types::CampaignsSettings }, optional: true, nullable: false

      field :social_card, -> { Mailchimp::Types::CampaignsSocialCard }, optional: true, nullable: false

      field :status, -> { Mailchimp::Types::CampaignsStatus }, optional: true, nullable: false

      field :tracking, -> { Mailchimp::Types::CampaignTrackingOptions }, optional: true, nullable: false

      field :type, -> { Mailchimp::Types::CampaignsType }, optional: true, nullable: false

      field :variate_settings, -> { Mailchimp::Types::CampaignsVariateSettings }, optional: true, nullable: false

      field :web_id, -> { Integer }, optional: true, nullable: false
    end
  end
end
