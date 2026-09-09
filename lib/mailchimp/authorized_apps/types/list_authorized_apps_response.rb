# frozen_string_literal: true

module Mailchimp
  module AuthorizedApps
    module Types
      # An array of objects, each representing an authorized application.
      class ListAuthorizedAppsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::AuthorizedApps::Types::ListAuthorizedAppsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :apps, -> { Internal::Types::Array[Mailchimp::AuthorizedApps::Types::ListAuthorizedAppsResponseAppsItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
