# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about a specific customer. For existing customers include only the `id` parameter in the `customer`
    # object body.
    class EcommerceStoresCartsPost < Internal::Types::Model
      field :address, -> { Mailchimp::Types::EcommerceStoresCartsPostAddress }, optional: true, nullable: false

      field :company, -> { String }, optional: true, nullable: false

      field :email_address, -> { String }, optional: true, nullable: false

      field :first_name, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :last_name, -> { String }, optional: true, nullable: false

      field :opt_in_status, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
