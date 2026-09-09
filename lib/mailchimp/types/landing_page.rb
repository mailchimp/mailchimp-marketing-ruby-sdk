# frozen_string_literal: true

module Mailchimp
  module Types
    # A summary of an individual landing page's settings and content.
    class LandingPage < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::LandingPageLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :created_at, -> { String }, optional: true, nullable: false

      field :created_by_source, -> { String }, optional: true, nullable: false

      field :description, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :published_at, -> { String }, optional: true, nullable: false

      field :status, -> { Mailchimp::Types::LandingPageStatus }, optional: true, nullable: false

      field :store_id, -> { String }, optional: true, nullable: false

      field :template_id, -> { Integer }, optional: true, nullable: false

      field :title, -> { String }, optional: true, nullable: false

      field :tracking, -> { Mailchimp::Types::LandingPageTracking }, optional: true, nullable: false

      field :unpublished_at, -> { String }, optional: true, nullable: false

      field :updated_at, -> { String }, optional: true, nullable: false

      field :url, -> { String }, optional: true, nullable: false

      field :web_id, -> { Integer }, optional: true, nullable: false
    end
  end
end
