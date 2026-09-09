# frozen_string_literal: true

module Mailchimp
  module LandingPages
    module Types
      class UpdateLandingPagesRequest < Internal::Types::Model
        field :page_id, -> { String }, optional: false, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :list_id, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :store_id, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :tracking, -> { Mailchimp::LandingPages::Types::UpdateLandingPagesRequestTracking }, optional: true, nullable: false
      end
    end
  end
end
