# frozen_string_literal: true

module Mailchimp
  module Types
    module AutomationWorkflowEmailTriggerSettingsWorkflowType
      extend Mailchimp::Internal::Types::Enum

      ABANDONED_BROWSE = "abandonedBrowse"
      ABANDONED_CART = "abandonedCart"
      API = "api"
      BEST_CUSTOMERS = "bestCustomers"
      CATEGORY_FOLLOWUP = "categoryFollowup"
      DATE_ADDED = "dateAdded"
      EMAIL_FOLLOWUP = "emailFollowup"
      EMAIL_SERIES = "emailSeries"
      GROUP_ADD = "groupAdd"
      GROUP_REMOVE = "groupRemove"
      MANDRILL = "mandrill"
      PRODUCT_FOLLOWUP = "productFollowup"
      PURCHASE_FOLLOWUP = "purchaseFollowup"
      RECURRING_EVENT = "recurringEvent"
      SPECIAL_EVENT = "specialEvent"
      VISIT_URL = "visitUrl"
      WELCOME_SERIES = "welcomeSeries"
    end
  end
end
