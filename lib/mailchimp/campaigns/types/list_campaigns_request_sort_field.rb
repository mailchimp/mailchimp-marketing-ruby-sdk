# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      module ListCampaignsRequestSortField
        extend Mailchimp::Internal::Types::Enum

        CREATE_TIME = "create_time"
        SEND_TIME = "send_time"
      end
    end
  end
end
