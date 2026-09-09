# frozen_string_literal: true

module Mailchimp
  module Types
    class FacebookAd < Internal::Types::Model
      field :canceled_at, -> { String }, optional: true, nullable: false

      field :create_time, -> { String }, optional: true, nullable: false

      field :has_segment, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :published_time, -> { String }, optional: true, nullable: false

      field :recipients, -> { Mailchimp::Types::FacebookAdRecipients }, optional: true, nullable: false

      field :report_summary, -> { Mailchimp::Types::FacebookAdReportSummary }, optional: true, nullable: false

      field :show_report, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :start_time, -> { String }, optional: true, nullable: false

      field :status, -> { Mailchimp::Types::FacebookAdStatus }, optional: true, nullable: false

      field :type, -> { Mailchimp::Types::FacebookAdType }, optional: true, nullable: false

      field :updated_at, -> { String }, optional: true, nullable: false

      field :web_id, -> { Integer }, optional: true, nullable: false
    end
  end
end
