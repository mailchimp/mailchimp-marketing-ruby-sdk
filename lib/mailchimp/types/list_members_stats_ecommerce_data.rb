# frozen_string_literal: true

module Mailchimp
  module Types
    # Ecommerce stats for the list member if the list is attached to a store.
    class ListMembersStatsEcommerceData < Internal::Types::Model
      field :currency_code, -> { String }, optional: true, nullable: false

      field :number_of_orders, -> { Integer }, optional: true, nullable: false

      field :total_revenue, -> { Integer }, optional: true, nullable: false
    end
  end
end
