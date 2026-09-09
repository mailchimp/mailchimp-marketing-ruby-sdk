# frozen_string_literal: true

module Mailchimp
  module FacebookAds
    module Types
      class ListFacebookAdsRequest < Internal::Types::Model
        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false

        field :offset, -> { Integer }, optional: true, nullable: false

        field :sort_field, -> { Mailchimp::FacebookAds::Types::ListFacebookAdsRequestSortField }, optional: true, nullable: false

        field :sort_dir, -> { Mailchimp::FacebookAds::Types::ListFacebookAdsRequestSortDir }, optional: true, nullable: false
      end
    end
  end
end
