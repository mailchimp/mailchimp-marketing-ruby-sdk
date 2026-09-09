# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # A collection of members who clicked on a specific link within a campaign.
      class ListClickDetailMembersReportsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListClickDetailMembersReportsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :campaign_id, -> { String }, optional: true, nullable: false

        field :members, -> { Internal::Types::Array[Mailchimp::Types::ClickDetailMember] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
