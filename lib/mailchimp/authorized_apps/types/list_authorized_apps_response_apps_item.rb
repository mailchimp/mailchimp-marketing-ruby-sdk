# frozen_string_literal: true

module Mailchimp
  module AuthorizedApps
    module Types
      # An authorized app.
      class ListAuthorizedAppsResponseAppsItem < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::AuthorizedApps::Types::ListAuthorizedAppsResponseAppsItemLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :description, -> { String }, optional: true, nullable: false

        field :id, -> { Integer }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :users, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
