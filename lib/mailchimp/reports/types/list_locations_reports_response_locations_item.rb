# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      class ListLocationsReportsResponseLocationsItem < Internal::Types::Model
        field :country_code, -> { String }, optional: true, nullable: false

        field :opens, -> { Integer }, optional: true, nullable: false

        field :proxy_excluded_opens, -> { Integer }, optional: true, nullable: false

        field :region, -> { String }, optional: true, nullable: false

        field :region_name, -> { String }, optional: true, nullable: false
      end
    end
  end
end
