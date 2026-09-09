# frozen_string_literal: true

module Mailchimp
  module LandingPages
    module Types
      class CreateActionUnpublishLandingPagesRequest < Internal::Types::Model
        field :page_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
