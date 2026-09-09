# frozen_string_literal: true

module Mailchimp
  module Types
    # A survey section. On PATCH, include the section id to update it; omit the section from the sections array to
    # delete it (and any question it contains).
    class SurveySectionRequest < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :type, -> { Mailchimp::Types::SurveySectionRequestType }, optional: false, nullable: false

      field :text, -> { String }, optional: true, nullable: false

      field :options, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :question, -> { Mailchimp::Types::SurveySectionRequestQuestion }, optional: true, nullable: false
    end
  end
end
