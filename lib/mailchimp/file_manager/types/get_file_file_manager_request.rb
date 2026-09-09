# frozen_string_literal: true

module Mailchimp
  module FileManager
    module Types
      class GetFileFileManagerRequest < Internal::Types::Model
        field :file_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
