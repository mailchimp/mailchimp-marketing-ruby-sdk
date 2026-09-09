# frozen_string_literal: true

module Mailchimp
  module Types
    class FacebookAdReportSummaryEcommerce < Internal::Types::Model
      field :average_order_revenue, -> { Integer }, optional: true, nullable: false

      field :currency_code, -> { String }, optional: true, nullable: false

      field :total_revenue, -> { Integer }, optional: true, nullable: false
    end
  end
end
