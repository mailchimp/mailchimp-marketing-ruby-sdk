# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class CreateSignupFormListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :contents, -> { Internal::Types::Array[Mailchimp::Lists::Types::CreateSignupFormListsRequestContentsItem] }, optional: true, nullable: false

        field :header, -> { Mailchimp::Lists::Types::CreateSignupFormListsRequestHeader }, optional: true, nullable: false

        field :styles, -> { Internal::Types::Array[Mailchimp::Lists::Types::CreateSignupFormListsRequestStylesItem] }, optional: true, nullable: false
      end
    end
  end
end
