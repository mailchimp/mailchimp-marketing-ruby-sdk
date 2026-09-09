# frozen_string_literal: true

module Mailchimp
  module Types
    # abandonedCart automation details.
    class ECommerceStoreAutomationsAbandonedCart < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :is_supported, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :status, -> { Mailchimp::Types::ECommerceStoreAutomationsAbandonedCartStatus }, optional: true, nullable: false
    end
  end
end
