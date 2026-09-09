# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      class ListFacebookAdEcommerceProductActivityReportingResponseProductsItem < Internal::Types::Model
        field :currency_code, -> { String }, optional: true, nullable: false

        field :image_url, -> { String }, optional: true, nullable: false

        field :recommendation_purchased, -> { Integer }, optional: true, nullable: false

        field :recommendation_total, -> { Integer }, optional: true, nullable: false

        field :sku, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :total_purchased, -> { Integer }, optional: true, nullable: false

        field :total_revenue, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
