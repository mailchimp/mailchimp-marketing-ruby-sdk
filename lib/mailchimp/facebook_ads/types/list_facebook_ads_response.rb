# frozen_string_literal: true

module Mailchimp
  module FacebookAds
    module Types
      # Contains an array of facebook ads.
      class ListFacebookAdsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::FacebookAds::Types::ListFacebookAdsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :facebook_ads, -> { Internal::Types::Array[Mailchimp::Types::FacebookAds] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
