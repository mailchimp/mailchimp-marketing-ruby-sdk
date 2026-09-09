# frozen_string_literal: true

module Mailchimp
  module LandingPages
    module Types
      # A collection of landing pages.
      class ListLandingPagesResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::LandingPages::Types::ListLandingPagesResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :landing_pages, -> { Internal::Types::Array[Mailchimp::Types::LandingPage] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
