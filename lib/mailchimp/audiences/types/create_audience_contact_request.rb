# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      class CreateAudienceContactRequest < Internal::Types::Model
        field :audience_id, -> { String }, optional: false, nullable: false

        field :merge_field_validation_mode, -> { Mailchimp::Audiences::Types::CreateAudienceContactRequestMergeFieldValidationMode }, optional: true, nullable: false

        field :data_mode, -> { Mailchimp::Audiences::Types::CreateAudienceContactRequestDataMode }, optional: true, nullable: false

        field :email_channel, -> { Mailchimp::Audiences::Types::CreateAudienceContactRequestEmailChannel }, optional: true, nullable: false

        field :language, -> { String }, optional: true, nullable: false

        field :merge_fields, -> { Internal::Types::Hash[String, Mailchimp::Audiences::Types::CreateAudienceContactRequestMergeFieldsValue] }, optional: true, nullable: false

        field :sms_channel, -> { Mailchimp::Audiences::Types::CreateAudienceContactRequestSmsChannel }, optional: true, nullable: false

        field :tags, -> { Internal::Types::Array[Mailchimp::Audiences::Types::CreateAudienceContactRequestTagsItem] }, optional: true, nullable: false

        field :update_existing, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
