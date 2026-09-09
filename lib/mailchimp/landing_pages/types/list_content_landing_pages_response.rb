# frozen_string_literal: true

module Mailchimp
  module LandingPages
    module Types
      # The HTML content for a landing page.
      class ListContentLandingPagesResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::LandingPages::Types::ListContentLandingPagesResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :html, -> { String }, optional: true, nullable: false

        field :json, -> { String }, optional: true, nullable: false
      end
    end
  end
end
