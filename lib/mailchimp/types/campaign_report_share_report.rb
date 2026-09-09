# frozen_string_literal: true

module Mailchimp
  module Types
    # The url and password for the [VIP report](https://mailchimp.com/help/share-a-campaign-report/).
    class CampaignReportShareReport < Internal::Types::Model
      field :share_password, -> { String }, optional: true, nullable: false

      field :share_url, -> { String }, optional: true, nullable: false
    end
  end
end
