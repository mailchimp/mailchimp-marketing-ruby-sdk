# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      # The send checklist for the campaign.
      class ListSendChecklistCampaignsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Campaigns::Types::ListSendChecklistCampaignsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :is_ready, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :items, -> { Internal::Types::Array[Mailchimp::Campaigns::Types::ListSendChecklistCampaignsResponseItemsItem] }, optional: true, nullable: false
      end
    end
  end
end
