# frozen_string_literal: true

module Mailchimp
  module Types
    # The source that created or imported this content.
    class SmsCampaignContentSource < Internal::Types::Model
      field :type, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false
    end
  end
end
