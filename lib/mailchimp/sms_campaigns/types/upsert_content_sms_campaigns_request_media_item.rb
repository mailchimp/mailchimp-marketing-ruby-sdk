# frozen_string_literal: true

module Mailchimp
  module SmsCampaigns
    module Types
      class UpsertContentSmsCampaignsRequestMediaItem < Internal::Types::Model
        field :url, -> { String }, optional: true, nullable: false
      end
    end
  end
end
