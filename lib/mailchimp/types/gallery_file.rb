# frozen_string_literal: true

module Mailchimp
  module Types
    # An individual file listed in the File Manager.
    class GalleryFile < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::GalleryFileLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :created_at, -> { String }, optional: true, nullable: false

      field :created_by, -> { String }, optional: true, nullable: false

      field :folder_id, -> { Integer }, optional: true, nullable: false

      field :full_size_url, -> { String }, optional: true, nullable: false

      field :height, -> { Integer }, optional: true, nullable: false

      field :id, -> { Integer }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :size, -> { Integer }, optional: true, nullable: false

      field :thumbnail_url, -> { String }, optional: true, nullable: false

      field :type, -> { Mailchimp::Types::GalleryFileType }, optional: true, nullable: false

      field :width, -> { Integer }, optional: true, nullable: false
    end
  end
end
