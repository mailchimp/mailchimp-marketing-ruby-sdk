# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # The customer's address.
      class UpsertStoreCustomerEcommerceRequestAddress < Internal::Types::Model
        field :address1, -> { String }, optional: true, nullable: false

        field :address2, -> { String }, optional: true, nullable: false

        field :city, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :country_code, -> { String }, optional: true, nullable: false

        field :postal_code, -> { String }, optional: true, nullable: false

        field :province, -> { String }, optional: true, nullable: false

        field :province_code, -> { String }, optional: true, nullable: false
      end
    end
  end
end
