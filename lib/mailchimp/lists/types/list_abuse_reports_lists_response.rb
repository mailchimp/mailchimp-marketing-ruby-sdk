# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # A collection of abuse complaints for a specific list. An abuse complaint occurs when your recipient clicks to
      # 'report spam' in their email program.
      class ListAbuseReportsListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListAbuseReportsListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :abuse_reports, -> { Internal::Types::Array[Mailchimp::Types::ListsAbuseReports] }, optional: true, nullable: false

        field :list_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
