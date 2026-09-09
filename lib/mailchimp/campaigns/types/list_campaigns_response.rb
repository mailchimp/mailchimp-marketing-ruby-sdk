# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      # An array of campaigns.
      class ListCampaignsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Campaigns::Types::ListCampaignsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :campaigns, -> { Internal::Types::Array[Mailchimp::Types::Campaigns] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
