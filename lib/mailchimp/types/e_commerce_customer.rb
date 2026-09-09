# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about a specific customer.
    class ECommerceCustomer < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ECommerceCustomerLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :address, -> { Mailchimp::Types::ECommerceCustomerAddress }, optional: true, nullable: false

      field :company, -> { String }, optional: true, nullable: false

      field :created_at, -> { String }, optional: true, nullable: false

      field :email_address, -> { String }, optional: true, nullable: false

      field :first_name, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :last_name, -> { String }, optional: true, nullable: false

      field :opt_in_status, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :orders_count, -> { Integer }, optional: true, nullable: false

      field :sms_phone_number, -> { String }, optional: true, nullable: false

      field :total_spent, -> { Mailchimp::Types::ECommerceCustomerTotalSpent }, optional: true, nullable: false

      field :updated_at, -> { String }, optional: true, nullable: false
    end
  end
end
