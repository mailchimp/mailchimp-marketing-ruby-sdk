# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # List Signup Forms.
      class ListSignupFormsListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListSignupFormsListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :list_id, -> { String }, optional: true, nullable: false

        field :signup_forms, -> { Internal::Types::Array[Mailchimp::Types::SignupForm] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
