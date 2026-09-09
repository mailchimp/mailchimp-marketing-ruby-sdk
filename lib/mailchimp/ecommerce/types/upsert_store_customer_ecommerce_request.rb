# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class UpsertStoreCustomerEcommerceRequest < Internal::Types::Model
        field :store_id, -> { String }, optional: false, nullable: false

        field :customer_id, -> { String }, optional: false, nullable: false

        field :address, -> { Mailchimp::Ecommerce::Types::UpsertStoreCustomerEcommerceRequestAddress }, optional: true, nullable: false

        field :company, -> { String }, optional: true, nullable: false

        field :email_address, -> { String }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :last_name, -> { String }, optional: true, nullable: false

        field :opt_in_status, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :sms_phone_number, -> { String }, optional: true, nullable: false

        field :total_spent, -> { Mailchimp::Ecommerce::Types::UpsertStoreCustomerEcommerceRequestTotalSpent }, optional: true, nullable: false
      end
    end
  end
end
