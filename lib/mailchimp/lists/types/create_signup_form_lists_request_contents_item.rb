# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # Collection of Content for List Signup Forms.
      class CreateSignupFormListsRequestContentsItem < Internal::Types::Model
        field :section, -> { Mailchimp::Lists::Types::CreateSignupFormListsRequestContentsItemSection }, optional: true, nullable: false

        field :value, -> { String }, optional: true, nullable: false
      end
    end
  end
end
