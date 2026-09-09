# frozen_string_literal: true

module Mailchimp
  module AccountExports
    module Types
      module CreateAccountExportsRequestIncludeStagesItem
        extend Mailchimp::Internal::Types::Enum

        AUDIENCES = "audiences"
        CAMPAIGNS = "campaigns"
        EVENTS = "events"
        GALLERY_FILES = "gallery_files"
        REPORTS = "reports"
        TEMPLATES = "templates"
      end
    end
  end
end
