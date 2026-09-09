# frozen_string_literal: true

module Mailchimp
  module Root
    module Types
      # Information about the account contact.
      class ListRootResponseContact < Internal::Types::Model
        field :addr1, -> { String }, optional: true, nullable: false

        field :addr2, -> { String }, optional: true, nullable: false

        field :city, -> { String }, optional: true, nullable: false

        field :company, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :state, -> { String }, optional: true, nullable: false

        field :zip, -> { String }, optional: true, nullable: false
      end
    end
  end
end
