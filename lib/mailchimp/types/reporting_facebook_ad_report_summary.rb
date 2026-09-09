# frozen_string_literal: true

module Mailchimp
  module Types
    # Report summary of facebook ad
    class ReportingFacebookAdReportSummary < Internal::Types::Model
      field :average_daily_budget, -> { Mailchimp::Types::ReportingFacebookAdReportSummaryAverageDailyBudget }, optional: true, nullable: false

      field :average_order_amount, -> { Mailchimp::Types::ReportingFacebookAdReportSummaryAverageOrderAmount }, optional: true, nullable: false

      field :click_rate, -> { Integer }, optional: true, nullable: false

      field :clicks, -> { Integer }, optional: true, nullable: false

      field :comments, -> { Integer }, optional: true, nullable: false

      field :cost_per_click, -> { Mailchimp::Types::ReportingFacebookAdReportSummaryCostPerClick }, optional: true, nullable: false

      field :ecommerce, -> { Mailchimp::Types::ReportingFacebookAdReportSummaryEcommerce }, optional: true, nullable: false

      field :extended_at, -> { Mailchimp::Types::ReportingFacebookAdReportSummaryExtendedAt }, optional: true, nullable: false

      field :first_time_buyers, -> { Integer }, optional: true, nullable: false

      field :has_extended_ad_duration, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :impressions, -> { Integer }, optional: true, nullable: false

      field :likes, -> { Integer }, optional: true, nullable: false

      field :reach, -> { Integer }, optional: true, nullable: false

      field :return_on_investment, -> { Integer }, optional: true, nullable: false

      field :shares, -> { Integer }, optional: true, nullable: false

      field :total_orders, -> { Integer }, optional: true, nullable: false

      field :total_products_sold, -> { Integer }, optional: true, nullable: false

      field :unique_clicks, -> { Integer }, optional: true, nullable: false
    end
  end
end
