# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # Subscriber location information.
      class UpsertMemberListsRequestLocation < Internal::Types::Model
        field :latitude, -> { Mailchimp::Lists::Types::UpsertMemberListsRequestLocationLatitude }, optional: true, nullable: false

        field :longitude, -> { Mailchimp::Lists::Types::UpsertMemberListsRequestLocationLongitude }, optional: true, nullable: false
      end
    end
  end
end
