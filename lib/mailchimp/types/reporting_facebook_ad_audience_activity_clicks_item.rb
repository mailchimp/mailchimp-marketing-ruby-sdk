# frozen_string_literal: true

module Mailchimp
  module Types
    class ReportingFacebookAdAudienceActivityClicksItem < Internal::Types::Model
      field :clicks, -> { Integer }, optional: true, nullable: false

      field :date, -> { String }, optional: true, nullable: false
    end
  end
end
