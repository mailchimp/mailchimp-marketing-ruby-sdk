# frozen_string_literal: true

module Mailchimp
  module SearchCampaigns
    module Types
      class ListSearchCampaignsRequest < Internal::Types::Model
        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :query, -> { String }, optional: false, nullable: false
      end
    end
  end
end
