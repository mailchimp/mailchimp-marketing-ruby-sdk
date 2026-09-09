# frozen_string_literal: true

module Mailchimp
  module Types
    class ECommerceOrderPromosItem < Internal::Types::Model
      field :amount_discounted, -> { Integer }, optional: true, nullable: false

      field :code, -> { String }, optional: true, nullable: false

      field :type, -> { Mailchimp::Types::ECommerceOrderPromosItemType }, optional: true, nullable: false
    end
  end
end
