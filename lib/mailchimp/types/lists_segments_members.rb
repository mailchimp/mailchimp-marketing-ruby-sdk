# frozen_string_literal: true

module Mailchimp
  module Types
    # Individuals who are currently or have been previously subscribed to this list, including members who have bounced
    # or unsubscribed.
    class ListsSegmentsMembers < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ListsSegmentsMembersLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :email_address, -> { String }, optional: true, nullable: false

      field :email_client, -> { String }, optional: true, nullable: false

      field :email_type, -> { String }, optional: true, nullable: false

      field :full_name, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :interests, -> { Internal::Types::Hash[String, Internal::Types::Boolean] }, optional: true, nullable: false

      field :ip_opt, -> { String }, optional: true, nullable: false

      field :ip_signup, -> { String }, optional: true, nullable: false

      field :language, -> { String }, optional: true, nullable: false

      field :last_changed, -> { String }, optional: true, nullable: false

      field :last_note, -> { Mailchimp::Types::ListsSegmentsMembersLastNote }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :location, -> { Mailchimp::Types::ListsSegmentsMembersLocation }, optional: true, nullable: false

      field :member_rating, -> { Integer }, optional: true, nullable: false

      field :merge_fields, -> { Internal::Types::Hash[String, Mailchimp::Types::ListsSegmentsMembersMergeFieldsValue] }, optional: true, nullable: false

      field :stats, -> { Mailchimp::Types::ListsSegmentsMembersStats }, optional: true, nullable: false

      field :status, -> { Mailchimp::Types::ListsSegmentsMembersStatus }, optional: true, nullable: false

      field :timestamp_opt, -> { String }, optional: true, nullable: false

      field :timestamp_signup, -> { String }, optional: true, nullable: false

      field :unique_email_id, -> { String }, optional: true, nullable: false

      field :vip, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
