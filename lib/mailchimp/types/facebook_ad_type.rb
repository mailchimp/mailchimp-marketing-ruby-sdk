# frozen_string_literal: true

module Mailchimp
  module Types
    module FacebookAdType
      extend Mailchimp::Internal::Types::Enum

      REGULAR = "regular"
      EMAIL_TOUCHPOINT = "email-touchpoint"
      PLAINTEXT = "plaintext"
      RSS = "rss"
      RECONFIRM = "reconfirm"
      VARIATE = "variate"
      ABSPLIT = "absplit"
      AUTOMATION = "automation"
      FACEBOOK = "facebook"
      GOOGLE = "google"
      AUTORESPONDER = "autoresponder"
      TRANSACTIONAL = "transactional"
      PAGE = "page"
      WEBSITE = "website"
      SOCIAL_POST = "social_post"
      SURVEY = "survey"
      CUSTOMER_JOURNEY = "customer_journey"
      SMS = "sms"
    end
  end
end
