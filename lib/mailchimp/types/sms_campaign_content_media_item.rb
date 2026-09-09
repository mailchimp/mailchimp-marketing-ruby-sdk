# frozen_string_literal: true

module Mailchimp
  module Types
    class SmsCampaignContentMediaItem < Internal::Types::Model
      field :url, -> { String }, optional: true, nullable: false
    end
  end
end
