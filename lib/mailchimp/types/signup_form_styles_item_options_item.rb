# frozen_string_literal: true

module Mailchimp
  module Types
    # An option for Signup Form Styles.
    class SignupFormStylesItemOptionsItem < Internal::Types::Model
      field :property, -> { String }, optional: true, nullable: false

      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
