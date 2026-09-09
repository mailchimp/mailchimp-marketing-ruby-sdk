# frozen_string_literal: true

module Mailchimp
  module Types
    module CampaignFeedbackSource
      extend Mailchimp::Internal::Types::Enum

      API = "api"
      EMAIL = "email"
      SMS = "sms"
      WEB = "web"
      IOS = "ios"
      ANDROID = "android"
    end
  end
end
