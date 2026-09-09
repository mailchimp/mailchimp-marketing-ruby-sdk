# frozen_string_literal: true

module Mailchimp
  module Types
    # Collection of Element style for List Signup Forms.
    class SignupFormStylesItem < Internal::Types::Model
      field :options, -> { Internal::Types::Array[Mailchimp::Types::SignupFormStylesItemOptionsItem] }, optional: true, nullable: false

      field :selector, -> { Mailchimp::Types::SignupFormStylesItemSelector }, optional: true, nullable: false
    end
  end
end
