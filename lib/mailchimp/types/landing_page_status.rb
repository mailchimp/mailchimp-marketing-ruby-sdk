# frozen_string_literal: true

module Mailchimp
  module Types
    module LandingPageStatus
      extend Mailchimp::Internal::Types::Enum

      PUBLISHED = "published"
      UNPUBLISHED = "unpublished"
      DRAFT = "draft"
    end
  end
end
