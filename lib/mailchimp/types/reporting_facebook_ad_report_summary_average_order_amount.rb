# frozen_string_literal: true

module Mailchimp
  module Types
    class ReportingFacebookAdReportSummaryAverageOrderAmount < Internal::Types::Model
      field :amount, -> { Integer }, optional: true, nullable: false

      field :currency_code, -> { String }, optional: true, nullable: false
    end
  end
end
