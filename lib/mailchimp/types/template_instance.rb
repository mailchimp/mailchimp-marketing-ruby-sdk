# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about a specific template.
    class TemplateInstance < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::TemplateInstanceLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :active, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :category, -> { String }, optional: true, nullable: false

      field :content_type, -> { Mailchimp::Types::TemplateInstanceContentType }, optional: true, nullable: false

      field :created_by, -> { String }, optional: true, nullable: false

      field :date_created, -> { String }, optional: true, nullable: false

      field :date_edited, -> { String }, optional: true, nullable: false

      field :drag_and_drop, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :edited_by, -> { String }, optional: true, nullable: false

      field :folder_id, -> { String }, optional: true, nullable: false

      field :id, -> { Integer }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :responsive, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :share_url, -> { String }, optional: true, nullable: false

      field :thumbnail, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false
    end
  end
end
