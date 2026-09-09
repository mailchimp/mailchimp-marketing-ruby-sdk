# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # Extra options for some merge field types.
      class CreateMergeFieldListsRequestOptions < Internal::Types::Model
        field :choices, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :date_format, -> { String }, optional: true, nullable: false

        field :default_country, -> { Integer }, optional: true, nullable: false

        field :phone_format, -> { String }, optional: true, nullable: false

        field :size, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
