# frozen_string_literal: true

module Mailchimp
  module Types
    module CampaignsContentType
      extend Mailchimp::Internal::Types::Enum

      TEMPLATE = "template"
      HTML = "html"
      URL = "url"
      MULTICHANNEL = "multichannel"
    end
  end
end
