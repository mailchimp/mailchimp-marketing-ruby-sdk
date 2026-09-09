# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      module ListFeedbackCampaignsResponseFeedbackItemSource
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
end
