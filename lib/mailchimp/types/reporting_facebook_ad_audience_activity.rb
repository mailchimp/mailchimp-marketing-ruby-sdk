# frozen_string_literal: true

module Mailchimp
  module Types
    class ReportingFacebookAdAudienceActivity < Internal::Types::Model
      field :clicks, -> { Internal::Types::Array[Mailchimp::Types::ReportingFacebookAdAudienceActivityClicksItem] }, optional: true, nullable: false

      field :impressions, -> { Internal::Types::Array[Mailchimp::Types::ReportingFacebookAdAudienceActivityImpressionsItem] }, optional: true, nullable: false

      field :revenue, -> { Internal::Types::Array[Mailchimp::Types::ReportingFacebookAdAudienceActivityRevenueItem] }, optional: true, nullable: false
    end
  end
end
