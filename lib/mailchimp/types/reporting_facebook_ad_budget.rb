# frozen_string_literal: true

module Mailchimp
  module Types
    class ReportingFacebookAdBudget < Internal::Types::Model
      field :currency_code, -> { String }, optional: true, nullable: false

      field :duration, -> { Integer }, optional: true, nullable: false

      field :total_amount, -> { Integer }, optional: true, nullable: false
    end
  end
end
