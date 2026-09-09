# frozen_string_literal: true

module Mailchimp
  module Types
    class FacebookAds < Internal::Types::Model
      field :canceled_at, -> { String }, optional: true, nullable: false

      field :create_time, -> { String }, optional: true, nullable: false

      field :has_segment, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :published_time, -> { String }, optional: true, nullable: false

      field :recipients, -> { Mailchimp::Types::FacebookAdRecipients }, optional: true, nullable: false

      field :report_summary, -> { Mailchimp::Types::FacebookAdReportSummary }, optional: true, nullable: false

      field :show_report, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :start_time, -> { String }, optional: true, nullable: false

      field :status, -> { Mailchimp::Types::FacebookAdStatus }, optional: true, nullable: false

      field :type, -> { Mailchimp::Types::FacebookAdType }, optional: true, nullable: false

      field :updated_at, -> { String }, optional: true, nullable: false

      field :web_id, -> { Integer }, optional: true, nullable: false

      field :email_source_name, -> { String }, optional: true, nullable: false

      field :end_time, -> { String }, optional: true, nullable: false

      field :needs_attention, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :paused_at, -> { String }, optional: true, nullable: false

      field :thumbnail, -> { String }, optional: true, nullable: false

      field :was_canceled_by_facebook, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :audience, -> { Mailchimp::Types::FacebookAdsAudience }, optional: true, nullable: false

      field :budget, -> { Mailchimp::Types::FacebookAdsBudget }, optional: true, nullable: false

      field :channel, -> { Mailchimp::Types::FacebookAdsChannel }, optional: true, nullable: false

      field :content, -> { Mailchimp::Types::FacebookAdsContent }, optional: true, nullable: false

      field :feedback, -> { Mailchimp::Types::FacebookAdsFeedback }, optional: true, nullable: false

      field :has_audience, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :has_content, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :is_connected, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :site, -> { Mailchimp::Types::FacebookAdsSite }, optional: true, nullable: false

      field :links, -> { Internal::Types::Array[Mailchimp::Types::FacebookAdsLinksItem] }, optional: true, nullable: false, api_name: "_links"
    end
  end
end
