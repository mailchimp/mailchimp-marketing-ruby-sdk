# frozen_string_literal: true

module Mailchimp
  module Types
    module TemplateInstanceContentType
      extend Mailchimp::Internal::Types::Enum

      TEMPLATE = "template"
      MULTICHANNEL = "multichannel"
      HTML = "html"
    end
  end
end
