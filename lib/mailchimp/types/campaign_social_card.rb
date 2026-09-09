# frozen_string_literal: true

module Mailchimp
  module Types
    # The preview for the campaign, rendered by social networks like Facebook and Twitter. [Learn
    # more](https://mailchimp.com/help/enable-and-customize-social-cards/).
    class CampaignSocialCard < Internal::Types::Model
      field :description, -> { String }, optional: true, nullable: false

      field :image_url, -> { String }, optional: true, nullable: false

      field :title, -> { String }, optional: true, nullable: false
    end
  end
end
