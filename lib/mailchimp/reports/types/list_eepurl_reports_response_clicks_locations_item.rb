# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # An individual click location.
      class ListEepurlReportsResponseClicksLocationsItem < Internal::Types::Model
        field :country, -> { String }, optional: true, nullable: false

        field :region, -> { String }, optional: true, nullable: false
      end
    end
  end
end
