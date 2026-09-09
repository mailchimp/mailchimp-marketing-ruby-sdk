# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about a specific list.
    class SubscriberList < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::SubscriberListLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :beamer_address, -> { String }, optional: true, nullable: false

      field :campaign_defaults, -> { Mailchimp::Types::SubscriberListCampaignDefaults }, optional: true, nullable: false

      field :contact, -> { Mailchimp::Types::SubscriberListContact }, optional: true, nullable: false

      field :date_created, -> { String }, optional: true, nullable: false

      field :double_optin, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :email_type_option, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :has_welcome, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :list_rating, -> { Integer }, optional: true, nullable: false

      field :marketing_permissions, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :modules, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :notify_on_subscribe, -> { String }, optional: true, nullable: false

      field :notify_on_unsubscribe, -> { String }, optional: true, nullable: false

      field :permission_reminder, -> { String }, optional: true, nullable: false

      field :stats, -> { Mailchimp::Types::SubscriberListStats }, optional: true, nullable: false

      field :subscribe_url_long, -> { String }, optional: true, nullable: false

      field :subscribe_url_short, -> { String }, optional: true, nullable: false

      field :use_archive_bar, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :visibility, -> { Mailchimp::Types::SubscriberListVisibility }, optional: true, nullable: false

      field :web_id, -> { Integer }, optional: true, nullable: false
    end
  end
end
