# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      # The outreach associated with this order. For example, an email campaign or Facebook ad.
      class CreateStoreOrderEcommerceRequestOutreach < Internal::Types::Model
        field :id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
