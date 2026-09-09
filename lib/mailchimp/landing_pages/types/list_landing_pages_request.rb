# frozen_string_literal: true

module Mailchimp
  module LandingPages
    module Types
      class ListLandingPagesRequest < Internal::Types::Model
        field :sort_dir, -> { Mailchimp::LandingPages::Types::ListLandingPagesRequestSortDir }, optional: true, nullable: false

        field :sort_field, -> { Mailchimp::LandingPages::Types::ListLandingPagesRequestSortField }, optional: true, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
