# frozen_string_literal: true

module Mailchimp
  module Types
    module CampaignsType
      extend Mailchimp::Internal::Types::Enum

      REGULAR = "regular"
      PLAINTEXT = "plaintext"
      ABSPLIT = "absplit"
      RSS = "rss"
      VARIATE = "variate"
    end
  end
end
