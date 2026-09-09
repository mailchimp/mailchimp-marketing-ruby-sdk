# frozen_string_literal: true

module Mailchimp
  module LandingPages
    module Types
      class CreateLandingPagesRequest < Internal::Types::Model
        field :use_default_list, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :list_id, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :store_id, -> { String }, optional: true, nullable: false

        field :template_id, -> { Integer }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :tracking, -> { Mailchimp::LandingPages::Types::CreateLandingPagesRequestTracking }, optional: true, nullable: false

        field :type, -> { Mailchimp::LandingPages::Types::CreateLandingPagesRequestType }, optional: true, nullable: false
      end
    end
  end
end
