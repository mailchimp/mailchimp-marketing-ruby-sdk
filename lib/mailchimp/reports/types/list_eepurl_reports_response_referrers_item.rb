# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # A single instance of a campaign referral.
      class ListEepurlReportsResponseReferrersItem < Internal::Types::Model
        field :clicks, -> { Integer }, optional: true, nullable: false

        field :first_click, -> { String }, optional: true, nullable: false

        field :last_click, -> { String }, optional: true, nullable: false

        field :referrer, -> { String }, optional: true, nullable: false
      end
    end
  end
end
