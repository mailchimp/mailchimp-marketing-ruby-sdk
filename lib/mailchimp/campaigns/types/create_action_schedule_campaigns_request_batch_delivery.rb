# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      # Choose whether the campaign should use [Batch Delivery](https://mailchimp.com/help/schedule-batch-delivery/).
      # Cannot be set to `true` for campaigns using [Timewarp](https://mailchimp.com/help/use-timewarp/).
      class CreateActionScheduleCampaignsRequestBatchDelivery < Internal::Types::Model
        field :batch_count, -> { Integer }, optional: false, nullable: false

        field :batch_delay, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
