# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    module Types
      class ListOrdersEcommerceRequest < Internal::Types::Model
        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false

        field :offset, -> { Integer }, optional: true, nullable: false

        field :campaign_id, -> { String }, optional: true, nullable: false

        field :outreach_id, -> { String }, optional: true, nullable: false

        field :customer_id, -> { String }, optional: true, nullable: false

        field :has_outreach, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
