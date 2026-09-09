# frozen_string_literal: true

module Mailchimp
  module Types
    class SegmentTypeItem < Internal::Types::Model
      extend Mailchimp::Internal::Types::Union

      discriminant :condition_type

      member -> { Mailchimp::Types::SegmentTypeItemAim }, key: "AIM"

      member -> { Mailchimp::Types::SegmentTypeItemAutomation }, key: "AUTOMATION"

      member -> { Mailchimp::Types::SegmentTypeItemCampaignPoll }, key: "CAMPAIGN_POLL"

      member -> { Mailchimp::Types::SegmentTypeItemConversation }, key: "CONVERSATION"

      member -> { Mailchimp::Types::SegmentTypeItemDate }, key: "DATE"

      member -> { Mailchimp::Types::SegmentTypeItemEmailClient }, key: "EMAIL_CLIENT"

      member -> { Mailchimp::Types::SegmentTypeItemLanguage }, key: "LANGUAGE"

      member -> { Mailchimp::Types::SegmentTypeItemMemberRating }, key: "MEMBER_RATING"

      member -> { Mailchimp::Types::SegmentTypeItemSignupSource }, key: "SIGNUP_SOURCE"

      member -> { Mailchimp::Types::SegmentTypeItemSurveyMonkey }, key: "SURVEY_MONKEY"

      member -> { Mailchimp::Types::SegmentTypeItemVip }, key: "VIP"

      member -> { Mailchimp::Types::SegmentTypeItemInterests }, key: "INTERESTS"

      member -> { Mailchimp::Types::SegmentTypeItemEcommCategory }, key: "ECOMM_CATEGORY"

      member -> { Mailchimp::Types::SegmentTypeItemEcommNumber }, key: "ECOMM_NUMBER"

      member -> { Mailchimp::Types::SegmentTypeItemEcommPurchased }, key: "ECOMM_PURCHASED"

      member -> { Mailchimp::Types::SegmentTypeItemEcommSpent }, key: "ECOMM_SPENT"

      member -> { Mailchimp::Types::SegmentTypeItemEcommStore }, key: "ECOMM_STORE"

      member -> { Mailchimp::Types::SegmentTypeItemGoalActivity }, key: "GOAL_ACTIVITY"

      member -> { Mailchimp::Types::SegmentTypeItemGoalTimestamp }, key: "GOAL_TIMESTAMP"

      member -> { Mailchimp::Types::SegmentTypeItemFuzzySegment }, key: "FUZZY_SEGMENT"

      member -> { Mailchimp::Types::SegmentTypeItemStaticSegment }, key: "STATIC_SEGMENT"

      member -> { Mailchimp::Types::SegmentTypeItemIPGeoCountryState }, key: "IP_GEO_COUNTRY_STATE"

      member -> { Mailchimp::Types::SegmentTypeItemIPGeoIn }, key: "IP_GEO_IN"

      member -> { Mailchimp::Types::SegmentTypeItemIPGeoInZip }, key: "IP_GEO_IN_ZIP"

      member -> { Mailchimp::Types::SegmentTypeItemIPGeoUnknown }, key: "IP_GEO_UNKNOWN"

      member -> { Mailchimp::Types::SegmentTypeItemIPGeoZip }, key: "IP_GEO_ZIP"

      member -> { Mailchimp::Types::SegmentTypeItemSocialAge }, key: "SOCIAL_AGE"

      member -> { Mailchimp::Types::SegmentTypeItemSocialGender }, key: "SOCIAL_GENDER"

      member -> { Mailchimp::Types::SegmentTypeItemSocialInfluence }, key: "SOCIAL_INFLUENCE"

      member -> { Mailchimp::Types::SegmentTypeItemSocialNetworkMember }, key: "SOCIAL_NETWORK_MEMBER"

      member -> { Mailchimp::Types::SegmentTypeItemSocialNetworkFollow }, key: "SOCIAL_NETWORK_FOLLOW"

      member -> { Mailchimp::Types::SegmentTypeItemAddressMerge }, key: "ADDRESS_MERGE"

      member -> { Mailchimp::Types::SegmentTypeItemZipMerge }, key: "ZIP_MERGE"

      member -> { Mailchimp::Types::SegmentTypeItemBirthdayMerge }, key: "BIRTHDAY_MERGE"

      member -> { Mailchimp::Types::SegmentTypeItemDateMerge }, key: "DATE_MERGE"

      member -> { Mailchimp::Types::SegmentTypeItemSelectMerge }, key: "SELECT_MERGE"

      member -> { Mailchimp::Types::SegmentTypeItemTextMerge }, key: "TEXT_MERGE"

      member -> { Mailchimp::Types::SegmentTypeItemEmailAddress }, key: "EMAIL_ADDRESS"

      member -> { Mailchimp::Types::SegmentTypeItemPredictedGender }, key: "PREDICTED_GENDER"

      member -> { Mailchimp::Types::SegmentTypeItemPredictedAge }, key: "PREDICTED_AGE"

      member -> { Mailchimp::Types::SegmentTypeItemNewSubscribers }, key: "NEW_SUBSCRIBERS"
    end
  end
end
