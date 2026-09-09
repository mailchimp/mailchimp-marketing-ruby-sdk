# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class BatchAddOrRemoveMembersListsResponseErrorsItem < Internal::Types::Model
        field :email_addresses, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :error, -> { String }, optional: true, nullable: false
      end
    end
  end
end
