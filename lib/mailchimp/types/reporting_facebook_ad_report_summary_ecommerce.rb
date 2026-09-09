# frozen_string_literal: true

module Mailchimp
  module Types
    class ReportingFacebookAdReportSummaryEcommerce < Internal::Types::Model
      field :currency_code, -> { String }, optional: true, nullable: false

      field :total_revenue, -> { Integer }, optional: true, nullable: false
    end
  end
end
