# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # Collection of Element style for List Signup Forms.
      class CreateSignupFormListsRequestStylesItem < Internal::Types::Model
        field :options, -> { Internal::Types::Array[Mailchimp::Lists::Types::CreateSignupFormListsRequestStylesItemOptionsItem] }, optional: true, nullable: false

        field :selector, -> { Mailchimp::Lists::Types::CreateSignupFormListsRequestStylesItemSelector }, optional: true, nullable: false
      end
    end
  end
end
