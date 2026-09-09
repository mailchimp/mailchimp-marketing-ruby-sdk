# frozen_string_literal: true

module Mailchimp
  module FacebookAds
    module Types
      class GetFacebookAdsRequest < Internal::Types::Model
        field :outreach_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
