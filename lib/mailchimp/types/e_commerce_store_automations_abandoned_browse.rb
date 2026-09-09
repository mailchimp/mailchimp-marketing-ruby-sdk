# frozen_string_literal: true

module Mailchimp
  module Types
    # abandonedBrowse automation details. abandonedBrowse is also known as Product Retargeting Email or Retarget Site
    # Visitors on the web.
    class ECommerceStoreAutomationsAbandonedBrowse < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :is_supported, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :status, -> { Mailchimp::Types::ECommerceStoreAutomationsAbandonedBrowseStatus }, optional: true, nullable: false
    end
  end
end
