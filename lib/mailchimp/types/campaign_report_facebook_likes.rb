# frozen_string_literal: true

module Mailchimp
  module Types
    # An object describing campaign engagement on Facebook.
    class CampaignReportFacebookLikes < Internal::Types::Model
      field :facebook_likes, -> { Integer }, optional: true, nullable: false

      field :recipient_likes, -> { Integer }, optional: true, nullable: false

      field :unique_likes, -> { Integer }, optional: true, nullable: false
    end
  end
end
