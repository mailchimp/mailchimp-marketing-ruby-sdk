# frozen_string_literal: true

module Mailchimp
  module Types
    # Stats for the list. Many of these are cached for at least five minutes.
    class SubscriberListStats < Internal::Types::Model
      field :avg_sub_rate, -> { Integer }, optional: true, nullable: false

      field :avg_unsub_rate, -> { Integer }, optional: true, nullable: false

      field :campaign_count, -> { Integer }, optional: true, nullable: false

      field :campaign_last_sent, -> { String }, optional: true, nullable: false

      field :cleaned_count, -> { Integer }, optional: true, nullable: false

      field :cleaned_count_since_send, -> { Integer }, optional: true, nullable: false

      field :click_rate, -> { Integer }, optional: true, nullable: false

      field :last_sub_date, -> { String }, optional: true, nullable: false

      field :last_unsub_date, -> { String }, optional: true, nullable: false

      field :member_count, -> { Integer }, optional: true, nullable: false

      field :member_count_since_send, -> { Integer }, optional: true, nullable: false

      field :merge_field_count, -> { Integer }, optional: true, nullable: false

      field :open_rate, -> { Integer }, optional: true, nullable: false

      field :target_sub_rate, -> { Integer }, optional: true, nullable: false

      field :total_contacts, -> { Integer }, optional: true, nullable: false

      field :unsubscribe_count, -> { Integer }, optional: true, nullable: false

      field :unsubscribe_count_since_send, -> { Integer }, optional: true, nullable: false
    end
  end
end
