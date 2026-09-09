# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class BatchSubscribeOrUnsubscribeListsResponseErrorsItem < Internal::Types::Model
        field :email_address, -> { String }, optional: true, nullable: false

        field :error, -> { String }, optional: true, nullable: false

        field :error_code, -> { Mailchimp::Lists::Types::BatchSubscribeOrUnsubscribeListsResponseErrorsItemErrorCode }, optional: true, nullable: false

        field :field, -> { String }, optional: true, nullable: false

        field :field_message, -> { String }, optional: true, nullable: false
      end
    end
  end
end
