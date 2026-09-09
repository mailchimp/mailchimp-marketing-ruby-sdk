# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # An option for Signup Form Styles.
      class CreateSignupFormListsRequestStylesItemOptionsItem < Internal::Types::Model
        field :property, -> { String }, optional: true, nullable: false

        field :value, -> { String }, optional: true, nullable: false
      end
    end
  end
end
