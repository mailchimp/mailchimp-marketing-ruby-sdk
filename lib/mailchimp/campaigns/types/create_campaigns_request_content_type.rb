# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      module CreateCampaignsRequestContentType
        extend Mailchimp::Internal::Types::Enum

        TEMPLATE = "template"
        MULTICHANNEL = "multichannel"
      end
    end
  end
end
