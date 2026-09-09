# frozen_string_literal: true

module Mailchimp
  module SearchCampaigns
    module Types
      # This object represents a link from the resource where it is found to another resource or action that may be
      # performed.
      class ListSearchCampaignsResponseLinksItem < Internal::Types::Model
        field :href, -> { String }, optional: true, nullable: false

        field :method_, -> { Mailchimp::SearchCampaigns::Types::ListSearchCampaignsResponseLinksItemMethod }, optional: true, nullable: false, api_name: "method"

        field :rel, -> { String }, optional: true, nullable: false

        field :schema, -> { String }, optional: true, nullable: false

        field :target_schema, -> { String }, optional: true, nullable: false, api_name: "targetSchema"
      end
    end
  end
end
