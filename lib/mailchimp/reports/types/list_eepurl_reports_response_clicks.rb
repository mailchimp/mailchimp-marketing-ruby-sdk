# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # A summary of the click-throughs on the campaign's URL.
      class ListEepurlReportsResponseClicks < Internal::Types::Model
        field :clicks, -> { Integer }, optional: true, nullable: false

        field :first_click, -> { String }, optional: true, nullable: false

        field :last_click, -> { String }, optional: true, nullable: false

        field :locations, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListEepurlReportsResponseClicksLocationsItem] }, optional: true, nullable: false
      end
    end
  end
end
