# frozen_string_literal: true

module Mailchimp
  module Types
    class ReportingFacebookAdAudienceActivityRevenueItem < Internal::Types::Model
      field :date, -> { String }, optional: true, nullable: false

      field :revenue, -> { Integer }, optional: true, nullable: false
    end
  end
end
