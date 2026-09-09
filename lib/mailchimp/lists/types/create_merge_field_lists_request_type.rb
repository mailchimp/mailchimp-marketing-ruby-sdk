# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      module CreateMergeFieldListsRequestType
        extend Mailchimp::Internal::Types::Enum

        TEXT = "text"
        NUMBER = "number"
        ADDRESS = "address"
        PHONE = "phone"
        DATE = "date"
        URL = "url"
        IMAGEURL = "imageurl"
        RADIO = "radio"
        DROPDOWN = "dropdown"
        BIRTHDAY = "birthday"
        ZIP = "zip"
      end
    end
  end
end
