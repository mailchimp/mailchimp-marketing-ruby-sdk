# frozen_string_literal: true

module Mailchimp
  module Types
    # List signup form.
    class SignupForm < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::SignupFormLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :contents, -> { Internal::Types::Array[Mailchimp::Types::SignupFormContentsItem] }, optional: true, nullable: false

      field :header, -> { Mailchimp::Types::SignupFormHeader }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :signup_form_url, -> { String }, optional: true, nullable: false

      field :styles, -> { Internal::Types::Array[Mailchimp::Types::SignupFormStylesItem] }, optional: true, nullable: false
    end
  end
end
