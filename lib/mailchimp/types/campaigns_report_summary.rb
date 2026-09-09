# frozen_string_literal: true

module Mailchimp
  module Types
    # For sent campaigns, a summary of opens, clicks, and e-commerce data.
    class CampaignsReportSummary < Internal::Types::Model
      field :click_rate, -> { Integer }, optional: true, nullable: false

      field :clicks, -> { Integer }, optional: true, nullable: false

      field :ecommerce, -> { Mailchimp::Types::CampaignsReportSummaryEcommerce }, optional: true, nullable: false

      field :open_rate, -> { Integer }, optional: true, nullable: false

      field :opens, -> { Integer }, optional: true, nullable: false

      field :subscriber_clicks, -> { Integer }, optional: true, nullable: false

      field :unique_opens, -> { Integer }, optional: true, nullable: false
    end
  end
end
