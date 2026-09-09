# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # A collection of ecommerce products.
      class ListEcommerceProductActivityReportsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListEcommerceProductActivityReportsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :products, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListEcommerceProductActivityReportsResponseProductsItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
