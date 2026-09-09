# frozen_string_literal: true

module Mailchimp
  module ConnectedSites
    module Types
      # A collection of connected sites in the account.
      class ListConnectedSitesResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::ConnectedSites::Types::ListConnectedSitesResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :sites, -> { Internal::Types::Array[Mailchimp::Types::ConnectedSite] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
