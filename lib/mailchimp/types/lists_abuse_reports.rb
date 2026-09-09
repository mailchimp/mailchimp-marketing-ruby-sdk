# frozen_string_literal: true

module Mailchimp
  module Types
    # Details of abuse complaints for a specific list. An abuse complaint occurs when your recipient clicks to 'report
    # spam' in their email program.
    class ListsAbuseReports < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ListsAbuseReportsLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :campaign_id, -> { String }, optional: true, nullable: false

      field :date, -> { String }, optional: true, nullable: false

      field :email_address, -> { String }, optional: true, nullable: false

      field :email_id, -> { String }, optional: true, nullable: false

      field :id, -> { Integer }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :merge_fields, -> { Internal::Types::Hash[String, Mailchimp::Types::ListsAbuseReportsMergeFieldsValue] }, optional: true, nullable: false

      field :vip, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
