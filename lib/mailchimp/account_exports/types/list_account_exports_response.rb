# frozen_string_literal: true

module Mailchimp
  module AccountExports
    module Types
      # An array of objects, each representing an account export.
      class ListAccountExportsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::AccountExports::Types::ListAccountExportsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :exports, -> { Internal::Types::Array[Mailchimp::AccountExports::Types::ListAccountExportsResponseExportsItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
