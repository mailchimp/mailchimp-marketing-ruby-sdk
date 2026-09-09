# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      module CreateCampaignsRequestType
        extend Mailchimp::Internal::Types::Enum

        REGULAR = "regular"
        PLAINTEXT = "plaintext"
        ABSPLIT = "absplit"
        RSS = "rss"
        VARIATE = "variate"
      end
    end
  end
end
