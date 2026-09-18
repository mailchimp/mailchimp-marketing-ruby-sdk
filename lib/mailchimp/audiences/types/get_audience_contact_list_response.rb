# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      # An array of objects, each representing a contact record.
      class GetAudienceContactListResponse < Internal::Types::Model
        field :contacts, -> { Internal::Types::Array[Mailchimp::Types::AudiencesContact] }, optional: true, nullable: false

        field :next_cursor, -> { String }, optional: true, nullable: false

        field :links, -> { Internal::Types::Array[Mailchimp::Audiences::Types::GetAudienceContactListResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"
      end
    end
  end
end
