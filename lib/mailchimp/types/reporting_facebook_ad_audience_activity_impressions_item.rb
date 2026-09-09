# frozen_string_literal: true

module Mailchimp
  module Types
    class ReportingFacebookAdAudienceActivityImpressionsItem < Internal::Types::Model
      field :date, -> { String }, optional: true, nullable: false

      field :impressions, -> { Integer }, optional: true, nullable: false
    end
  end
end
