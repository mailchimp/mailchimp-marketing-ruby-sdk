# frozen_string_literal: true

module Mailchimp
  module Types
    class LandingPageReportSignupTagsItem < Internal::Types::Model
      field :tag_id, -> { Integer }, optional: true, nullable: false

      field :tag_name, -> { String }, optional: true, nullable: false
    end
  end
end
