# frozen_string_literal: true

module Mailchimp
  module Types
    # A specific note for a specific member.
    class MemberNotes < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::MemberNotesLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :contact_id, -> { String }, optional: true, nullable: false

      field :created_at, -> { String }, optional: true, nullable: false

      field :created_by, -> { String }, optional: true, nullable: false

      field :email_id, -> { String }, optional: true, nullable: false

      field :id, -> { Integer }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :note, -> { String }, optional: true, nullable: false

      field :updated_at, -> { String }, optional: true, nullable: false
    end
  end
end
