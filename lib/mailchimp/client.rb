# frozen_string_literal: true

module Mailchimp
  class Client
    # @param token [String]
    # @param base_url [String, nil]
    # @param max_retries [Integer]
    #
    # @return [void]
    def initialize(token:, base_url: nil, max_retries: 2)
      @raw_client = Mailchimp::Internal::Http::RawClient.new(
        base_url: base_url || Mailchimp::Environment::DEFAULT,
        headers: {
          "X-Fern-Language" => "Ruby",
          Authorization: "Bearer #{token}"
        },
        max_retries: max_retries
      )
    end

    # @return [Mailchimp::Root::Client]
    def root
      @root ||= Mailchimp::Root::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::AccountExports::Client]
    def account_exports
      @account_exports ||= Mailchimp::AccountExports::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::ActivityFeed::Client]
    def activity_feed
      @activity_feed ||= Mailchimp::ActivityFeed::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::AuthorizedApps::Client]
    def authorized_apps
      @authorized_apps ||= Mailchimp::AuthorizedApps::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::Automations::Client]
    def automations
      @automations ||= Mailchimp::Automations::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::BatchWebhooks::Client]
    def batch_webhooks
      @batch_webhooks ||= Mailchimp::BatchWebhooks::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::Batches::Client]
    def batches
      @batches ||= Mailchimp::Batches::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::CampaignFolders::Client]
    def campaign_folders
      @campaign_folders ||= Mailchimp::CampaignFolders::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::Campaigns::Client]
    def campaigns
      @campaigns ||= Mailchimp::Campaigns::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::ConnectedSites::Client]
    def connected_sites
      @connected_sites ||= Mailchimp::ConnectedSites::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::Conversations::Client]
    def conversations
      @conversations ||= Mailchimp::Conversations::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::CustomerJourneys::Client]
    def customer_journeys
      @customer_journeys ||= Mailchimp::CustomerJourneys::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::Ecommerce::Client]
    def ecommerce
      @ecommerce ||= Mailchimp::Ecommerce::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::FacebookAds::Client]
    def facebook_ads
      @facebook_ads ||= Mailchimp::FacebookAds::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::FileManager::Client]
    def file_manager
      @file_manager ||= Mailchimp::FileManager::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::LandingPages::Client]
    def landing_pages
      @landing_pages ||= Mailchimp::LandingPages::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::Lists::Client]
    def lists
      @lists ||= Mailchimp::Lists::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::Surveys::Client]
    def surveys
      @surveys ||= Mailchimp::Surveys::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::Ping::Client]
    def ping
      @ping ||= Mailchimp::Ping::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::Reporting::Client]
    def reporting
      @reporting ||= Mailchimp::Reporting::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::Reports::Client]
    def reports
      @reports ||= Mailchimp::Reports::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::SearchCampaigns::Client]
    def search_campaigns
      @search_campaigns ||= Mailchimp::SearchCampaigns::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::SmsCampaigns::Client]
    def sms_campaigns
      @sms_campaigns ||= Mailchimp::SmsCampaigns::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::SearchMembers::Client]
    def search_members
      @search_members ||= Mailchimp::SearchMembers::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::TemplateFolders::Client]
    def template_folders
      @template_folders ||= Mailchimp::TemplateFolders::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::Templates::Client]
    def templates
      @templates ||= Mailchimp::Templates::Client.new(client: @raw_client)
    end

    # @return [Mailchimp::VerifiedDomains::Client]
    def verified_domains
      @verified_domains ||= Mailchimp::VerifiedDomains::Client.new(client: @raw_client)
    end
  end
end
