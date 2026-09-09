# frozen_string_literal: true

module Mailchimp
  module Types
    # Details for the automations attached to this store.
    class ECommerceStoreAutomations < Internal::Types::Model
      field :abandoned_browse, -> { Mailchimp::Types::ECommerceStoreAutomationsAbandonedBrowse }, optional: true, nullable: false

      field :abandoned_cart, -> { Mailchimp::Types::ECommerceStoreAutomationsAbandonedCart }, optional: true, nullable: false
    end
  end
end
