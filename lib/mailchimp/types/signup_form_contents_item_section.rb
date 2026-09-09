# frozen_string_literal: true

module Mailchimp
  module Types
    module SignupFormContentsItemSection
      extend Mailchimp::Internal::Types::Enum

      SIGNUP_MESSAGE = "signup_message"
      UNSUB_MESSAGE = "unsub_message"
      SIGNUP_THANK_YOU_TITLE = "signup_thank_you_title"
    end
  end
end
