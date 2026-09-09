# frozen_string_literal: true

module Mailchimp
  module SearchCampaigns
    module Types
      # Campaigns and Snippets found for given search term.
      class ListSearchCampaignsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::SearchCampaigns::Types::ListSearchCampaignsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :results, -> { Internal::Types::Array[Mailchimp::SearchCampaigns::Types::ListSearchCampaignsResponseResultsItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
