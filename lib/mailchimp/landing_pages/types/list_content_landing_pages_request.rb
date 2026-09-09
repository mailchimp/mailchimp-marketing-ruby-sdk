# frozen_string_literal: true

module Mailchimp
  module LandingPages
    module Types
      class ListContentLandingPagesRequest < Internal::Types::Model
        field :page_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
