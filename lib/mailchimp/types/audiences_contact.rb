# frozen_string_literal: true

module Mailchimp
  module Types
    # An instance of a contact.
    class AudiencesContact < Internal::Types::Model
      field :audience_id, -> { String }, optional: true, nullable: false

      field :created_at, -> { String }, optional: true, nullable: false

      field :email_channel, -> { Mailchimp::Types::AudiencesContactEmailChannel }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :language, -> { Mailchimp::Types::AudiencesContactLanguage }, optional: true, nullable: false

      field :last_updated_at, -> { String }, optional: true, nullable: false

      field :merge_fields, -> { Internal::Types::Hash[String, Mailchimp::Types::AudiencesContactMergeFieldsValue] }, optional: true, nullable: false

      field :sms_channel, -> { Mailchimp::Types::AudiencesContactSmsChannel }, optional: true, nullable: false

      field :source, -> { Mailchimp::Types::AudiencesContactSource }, optional: true, nullable: false

      field :status, -> { Mailchimp::Types::AudiencesContactStatus }, optional: true, nullable: false

      field :tags, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
