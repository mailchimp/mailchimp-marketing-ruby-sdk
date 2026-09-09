# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # Options for customizing your signup form header.
      class CreateSignupFormListsRequestHeader < Internal::Types::Model
        field :image_align, -> { Mailchimp::Lists::Types::CreateSignupFormListsRequestHeaderImageAlign }, optional: true, nullable: false

        field :image_alt, -> { String }, optional: true, nullable: false

        field :image_border_color, -> { String }, optional: true, nullable: false

        field :image_border_style, -> { Mailchimp::Lists::Types::CreateSignupFormListsRequestHeaderImageBorderStyle }, optional: true, nullable: false

        field :image_border_width, -> { String }, optional: true, nullable: false

        field :image_height, -> { String }, optional: true, nullable: false

        field :image_link, -> { String }, optional: true, nullable: false

        field :image_target, -> { Mailchimp::Lists::Types::CreateSignupFormListsRequestHeaderImageTarget }, optional: true, nullable: false

        field :image_url, -> { String }, optional: true, nullable: false

        field :image_width, -> { String }, optional: true, nullable: false

        field :text, -> { String }, optional: true, nullable: false
      end
    end
  end
end
