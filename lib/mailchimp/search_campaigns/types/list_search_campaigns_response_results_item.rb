# frozen_string_literal: true

module Mailchimp
  module SearchCampaigns
    module Types
      class ListSearchCampaignsResponseResultsItem < Internal::Types::Model
        field :campaign, -> { Mailchimp::Types::Campaigns }, optional: true, nullable: false

        field :snippet, -> { String }, optional: true, nullable: false
      end
    end
  end
end
