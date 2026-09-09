# frozen_string_literal: true

module Mailchimp
  module Types
    # A summary of an individual landing page's settings and content.
    class LandingPageReport < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::LandingPageReportLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :clicks, -> { Integer }, optional: true, nullable: false

      field :conversion_rate, -> { Integer }, optional: true, nullable: false

      field :ecommerce, -> { Mailchimp::Types::LandingPageReportEcommerce }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :list_name, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :published_at, -> { String }, optional: true, nullable: false

      field :signup_tags, -> { Internal::Types::Array[Mailchimp::Types::LandingPageReportSignupTagsItem] }, optional: true, nullable: false

      field :status, -> { String }, optional: true, nullable: false

      field :subscribes, -> { Integer }, optional: true, nullable: false

      field :timeseries, -> { Mailchimp::Types::LandingPageReportTimeseries }, optional: true, nullable: false

      field :title, -> { String }, optional: true, nullable: false

      field :unique_visits, -> { Integer }, optional: true, nullable: false

      field :unpublished_at, -> { String }, optional: true, nullable: false

      field :url, -> { String }, optional: true, nullable: false

      field :visits, -> { Integer }, optional: true, nullable: false

      field :web_id, -> { Integer }, optional: true, nullable: false
    end
  end
end
