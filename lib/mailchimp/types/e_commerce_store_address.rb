# frozen_string_literal: true

module Mailchimp
  module Types
    # The store address.
    class ECommerceStoreAddress < Internal::Types::Model
      field :address1, -> { String }, optional: true, nullable: false

      field :address2, -> { String }, optional: true, nullable: false

      field :city, -> { String }, optional: true, nullable: false

      field :country, -> { String }, optional: true, nullable: false

      field :country_code, -> { String }, optional: true, nullable: false

      field :latitude, -> { Integer }, optional: true, nullable: false

      field :longitude, -> { Integer }, optional: true, nullable: false

      field :postal_code, -> { String }, optional: true, nullable: false

      field :province, -> { String }, optional: true, nullable: false

      field :province_code, -> { String }, optional: true, nullable: false
    end
  end
end
