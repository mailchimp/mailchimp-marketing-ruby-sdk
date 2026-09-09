# frozen_string_literal: true

module Mailchimp
  module Types
    # Collection of Content for List Signup Forms.
    class SignupFormContentsItem < Internal::Types::Model
      field :section, -> { Mailchimp::Types::SignupFormContentsItemSection }, optional: true, nullable: false

      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
