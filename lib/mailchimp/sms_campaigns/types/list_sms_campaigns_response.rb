# frozen_string_literal: true

module Mailchimp
  module SmsCampaigns
    module Types
      # A collection of SMS campaigns.
      class ListSmsCampaignsResponse < Internal::Types::Model
        field :sms_campaigns, -> { Internal::Types::Array[Mailchimp::Types::SmsCampaign] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false

        field :links, -> { Internal::Types::Array[Mailchimp::SmsCampaigns::Types::ListSmsCampaignsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"
      end
    end
  end
end
