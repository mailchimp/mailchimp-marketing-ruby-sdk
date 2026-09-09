# frozen_string_literal: true

module Mailchimp
  module Templates
    module Types
      module ListTemplatesRequestContentType
        extend Mailchimp::Internal::Types::Enum

        HTML = "html"
        TEMPLATE = "template"
        MULTICHANNEL = "multichannel"
      end
    end
  end
end
