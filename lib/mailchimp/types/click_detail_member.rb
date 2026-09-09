# frozen_string_literal: true

module Mailchimp
  module Types
    # A subscriber who clicked a specific URL in a specific campaign.
    class ClickDetailMember < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ClickDetailMemberLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :campaign_id, -> { String }, optional: true, nullable: false

      field :clicks, -> { Integer }, optional: true, nullable: false

      field :contact_status, -> { String }, optional: true, nullable: false

      field :email_address, -> { String }, optional: true, nullable: false

      field :email_id, -> { String }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :list_is_active, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :merge_fields, -> { Internal::Types::Hash[String, Mailchimp::Types::ClickDetailMemberMergeFieldsValue] }, optional: true, nullable: false

      field :url_id, -> { String }, optional: true, nullable: false

      field :vip, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
