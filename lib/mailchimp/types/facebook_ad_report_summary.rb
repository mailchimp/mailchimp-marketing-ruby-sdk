# frozen_string_literal: true

module Mailchimp
  module Types
    # High level reporting stats for an outreach.
    class FacebookAdReportSummary < Internal::Types::Model
      field :click_rate, -> { Integer }, optional: true, nullable: false

      field :clicks, -> { Integer }, optional: true, nullable: false

      field :conversion_rate, -> { Integer }, optional: true, nullable: false

      field :ecommerce, -> { Mailchimp::Types::FacebookAdReportSummaryEcommerce }, optional: true, nullable: false

      field :engagements, -> { Integer }, optional: true, nullable: false

      field :impressions, -> { Integer }, optional: true, nullable: false

      field :open_rate, -> { Integer }, optional: true, nullable: false

      field :opens, -> { Integer }, optional: true, nullable: false

      field :proxy_excluded_open_rate, -> { Integer }, optional: true, nullable: false

      field :proxy_excluded_opens, -> { Integer }, optional: true, nullable: false

      field :proxy_excluded_unique_opens, -> { Integer }, optional: true, nullable: false

      field :reach, -> { Integer }, optional: true, nullable: false

      field :subscriber_clicks, -> { Integer }, optional: true, nullable: false

      field :subscribes, -> { Integer }, optional: true, nullable: false

      field :total_sent, -> { Integer }, optional: true, nullable: false

      field :unique_opens, -> { Integer }, optional: true, nullable: false

      field :unique_visits, -> { Integer }, optional: true, nullable: false

      field :visits, -> { Integer }, optional: true, nullable: false
    end
  end
end
