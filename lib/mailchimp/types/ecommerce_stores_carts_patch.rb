# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about a specific customer. Orders for existing customers should include only the `id` parameter in the
    # `customer` object body.
    class EcommerceStoresCartsPatch < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :address, -> { Mailchimp::Types::EcommerceStoresCartsPatchAddress }, optional: true, nullable: false

      field :company, -> { String }, optional: true, nullable: false

      field :first_name, -> { String }, optional: true, nullable: false

      field :last_name, -> { String }, optional: true, nullable: false

      field :opt_in_status, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :total_spent, -> { Mailchimp::Types::EcommerceStoresCartsPatchTotalSpent }, optional: true, nullable: false
    end
  end
end
