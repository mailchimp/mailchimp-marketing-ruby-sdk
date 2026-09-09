# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      class UpdateCampaignsRequestVariateSettingsSendTimesItem < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { String }

        member -> { String }
      end
    end
  end
end
