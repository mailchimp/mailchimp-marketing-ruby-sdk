# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      # A collection of Facebook ads.
      class ListFacebookAdsReportingResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reporting::Types::ListFacebookAdsReportingResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :facebook_ads, -> { Internal::Types::Array[Mailchimp::Types::ReportingFacebookAd] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
