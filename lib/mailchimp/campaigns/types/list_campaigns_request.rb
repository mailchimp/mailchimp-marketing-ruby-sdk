# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      class ListCampaignsRequest < Internal::Types::Model
        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false

        field :offset, -> { Integer }, optional: true, nullable: false

        field :type, -> { Mailchimp::Campaigns::Types::ListCampaignsRequestType }, optional: true, nullable: false

        field :status, -> { Mailchimp::Campaigns::Types::ListCampaignsRequestStatus }, optional: true, nullable: false

        field :before_send_time, -> { String }, optional: true, nullable: false

        field :since_send_time, -> { String }, optional: true, nullable: false

        field :before_create_time, -> { String }, optional: true, nullable: false

        field :since_create_time, -> { String }, optional: true, nullable: false

        field :list_id, -> { String }, optional: true, nullable: false

        field :folder_id, -> { String }, optional: true, nullable: false

        field :member_id, -> { String }, optional: true, nullable: false

        field :sort_field, -> { Mailchimp::Campaigns::Types::ListCampaignsRequestSortField }, optional: true, nullable: false

        field :sort_dir, -> { Mailchimp::Campaigns::Types::ListCampaignsRequestSortDir }, optional: true, nullable: false

        field :include_resend_shortcut_eligibility, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :include_resend_shortcut_usage, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
