# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      module ListMemberActivityFeedListsRequestActivityFiltersItem
        extend Mailchimp::Internal::Types::Enum

        BOUNCE = "bounce"
        CLICK = "click"
        CONVERSATION = "conversation"
        ECOMMERCE_SIGNUP = "ecommerce_signup"
        EVENT = "event"
        WEB_ENGAGEMENT = "web_engagement"
        GENERIC_SIGNUP = "generic_signup"
        LANDING_PAGE_SIGNUP = "landing_page_signup"
        MARKETING_PERMISSION = "marketing_permission"
        NOTE = "note"
        OPEN = "open"
        ORDER = "order"
        POSTCARD_SENT = "postcard_sent"
        SENT = "sent"
        SIGNUP = "signup"
        SQUATTER_SIGNUP = "squatter_signup"
        UNSUB = "unsub"
        WEBSITE_SIGNUP = "website_signup"
        SURVEY_RESPONSE = "survey_response"
        SMS_BULK_SENT = "sms_bulk_sent"
        INBOX_THREAD = "inbox_thread"
        QBO_PAYMENT_LINK = "qbo_payment_link"
        VIDEO_CALL_TRANSCRIPTS = "video_call_transcripts"
        WHATSAPP_BULK_SENT = "whatsapp_bulk_sent"
        WHATSAPP_DELIVERED = "whatsapp_delivered"
      end
    end
  end
end
