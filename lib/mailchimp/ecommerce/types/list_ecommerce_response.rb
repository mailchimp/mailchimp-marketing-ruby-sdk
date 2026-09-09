# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # This resource serves as a namespace for e-commerce-related resources.
      class ListEcommerceResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Ecommerce::Types::ListEcommerceResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"
      end
    end
  end
end
