# frozen_string_literal: true

module Mailchimp
  module Root
    module Types
      # The API root resource links to all other resources available in the API.
      class ListRootResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Root::Types::ListRootResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :account_id, -> { String }, optional: true, nullable: false

        field :account_industry, -> { String }, optional: true, nullable: false

        field :account_name, -> { String }, optional: true, nullable: false

        field :account_timezone, -> { String }, optional: true, nullable: false

        field :avatar_url, -> { String }, optional: true, nullable: false

        field :contact, -> { Mailchimp::Root::Types::ListRootResponseContact }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false

        field :first_payment, -> { Mailchimp::Root::Types::ListRootResponseFirstPayment }, optional: true, nullable: false

        field :industry_stats, -> { Mailchimp::Root::Types::ListRootResponseIndustryStats }, optional: true, nullable: false

        field :last_login, -> { String }, optional: true, nullable: false

        field :last_name, -> { String }, optional: true, nullable: false

        field :login_id, -> { String }, optional: true, nullable: false

        field :member_since, -> { String }, optional: true, nullable: false

        field :pricing_plan_type, -> { Mailchimp::Root::Types::ListRootResponsePricingPlanType }, optional: true, nullable: false

        field :pro_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :role, -> { String }, optional: true, nullable: false

        field :total_subscribers, -> { Integer }, optional: true, nullable: false

        field :username, -> { String }, optional: true, nullable: false
      end
    end
  end
end
