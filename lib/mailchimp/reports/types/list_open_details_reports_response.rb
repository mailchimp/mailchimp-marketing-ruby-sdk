# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # A detailed report of any campaign emails that were opened by a list member.
      class ListOpenDetailsReportsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListOpenDetailsReportsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :campaign_id, -> { String }, optional: true, nullable: false

        field :members, -> { Internal::Types::Array[Mailchimp::Types::OpenActivity] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false

        field :total_opens, -> { Integer }, optional: true, nullable: false

        field :total_proxy_excluded_opens, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
