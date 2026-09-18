# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      class PatchAudienceContactRequest < Internal::Types::Model
        field :audience_id, -> { String }, optional: false, nullable: false

        field :contact_id, -> { String }, optional: false, nullable: false

        field :merge_field_validation_mode, -> { Mailchimp::Audiences::Types::PatchAudienceContactRequestMergeFieldValidationMode }, optional: true, nullable: false

        field :data_mode, -> { Mailchimp::Audiences::Types::PatchAudienceContactRequestDataMode }, optional: true, nullable: false

        field :email_channel, -> { Mailchimp::Audiences::Types::PatchAudienceContactRequestEmailChannel }, optional: true, nullable: false

        field :language, -> { String }, optional: true, nullable: false

        field :merge_fields, -> { Internal::Types::Hash[String, Mailchimp::Audiences::Types::PatchAudienceContactRequestMergeFieldsValue] }, optional: true, nullable: false

        field :sms_channel, -> { Mailchimp::Audiences::Types::PatchAudienceContactRequestSmsChannel }, optional: true, nullable: false

        field :tags, -> { Internal::Types::Array[Mailchimp::Audiences::Types::PatchAudienceContactRequestTagsItem] }, optional: true, nullable: false
      end
    end
  end
end
