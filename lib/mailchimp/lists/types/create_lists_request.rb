# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class CreateListsRequest < Internal::Types::Model
        field :campaign_defaults, -> { Mailchimp::Lists::Types::CreateListsRequestCampaignDefaults }, optional: false, nullable: false

        field :contact, -> { Mailchimp::Lists::Types::CreateListsRequestContact }, optional: false, nullable: false

        field :double_optin, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :email_type_option, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :marketing_permissions, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :notify_on_subscribe, -> { String }, optional: true, nullable: false

        field :notify_on_unsubscribe, -> { String }, optional: true, nullable: false

        field :permission_reminder, -> { String }, optional: false, nullable: false

        field :use_archive_bar, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
