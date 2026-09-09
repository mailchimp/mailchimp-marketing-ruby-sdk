# frozen_string_literal: true

module Mailchimp
  module Types
    # Options for customizing your signup form header.
    class SignupFormHeader < Internal::Types::Model
      field :image_align, -> { Mailchimp::Types::SignupFormHeaderImageAlign }, optional: true, nullable: false

      field :image_alt, -> { String }, optional: true, nullable: false

      field :image_border_color, -> { String }, optional: true, nullable: false

      field :image_border_style, -> { Mailchimp::Types::SignupFormHeaderImageBorderStyle }, optional: true, nullable: false

      field :image_border_width, -> { String }, optional: true, nullable: false

      field :image_height, -> { String }, optional: true, nullable: false

      field :image_link, -> { String }, optional: true, nullable: false

      field :image_target, -> { Mailchimp::Types::SignupFormHeaderImageTarget }, optional: true, nullable: false

      field :image_url, -> { String }, optional: true, nullable: false

      field :image_width, -> { String }, optional: true, nullable: false

      field :text, -> { String }, optional: true, nullable: false
    end
  end
end
