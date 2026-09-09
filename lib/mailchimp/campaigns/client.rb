# frozen_string_literal: true

module Mailchimp
  module Campaigns
    class Client
      # @param client [Mailchimp::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Get all campaigns in an account.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      # @option params [Mailchimp::Campaigns::Types::ListCampaignsRequestType, nil] :type
      # @option params [Mailchimp::Campaigns::Types::ListCampaignsRequestStatus, nil] :status
      # @option params [String, nil] :before_send_time
      # @option params [String, nil] :since_send_time
      # @option params [String, nil] :before_create_time
      # @option params [String, nil] :since_create_time
      # @option params [String, nil] :list_id
      # @option params [String, nil] :folder_id
      # @option params [String, nil] :member_id
      # @option params [Mailchimp::Campaigns::Types::ListCampaignsRequestSortField, nil] :sort_field
      # @option params [Mailchimp::Campaigns::Types::ListCampaignsRequestSortDir, nil] :sort_dir
      # @option params [Boolean, nil] :include_resend_shortcut_eligibility
      # @option params [Boolean, nil] :include_resend_shortcut_usage
      #
      # @example
      #   client.campaigns.list
      #
      # @return [Mailchimp::Campaigns::Types::ListCampaignsResponse]
      def list(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)
        query_params["type"] = params[:type] if params.key?(:type)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["before_send_time"] = params[:before_send_time] if params.key?(:before_send_time)
        query_params["since_send_time"] = params[:since_send_time] if params.key?(:since_send_time)
        query_params["before_create_time"] = params[:before_create_time] if params.key?(:before_create_time)
        query_params["since_create_time"] = params[:since_create_time] if params.key?(:since_create_time)
        query_params["list_id"] = params[:list_id] if params.key?(:list_id)
        query_params["folder_id"] = params[:folder_id] if params.key?(:folder_id)
        query_params["member_id"] = params[:member_id] if params.key?(:member_id)
        query_params["sort_field"] = params[:sort_field] if params.key?(:sort_field)
        query_params["sort_dir"] = params[:sort_dir] if params.key?(:sort_dir)
        query_params["include_resend_shortcut_eligibility"] = params[:include_resend_shortcut_eligibility] if params.key?(:include_resend_shortcut_eligibility)
        query_params["include_resend_shortcut_usage"] = params[:include_resend_shortcut_usage] if params.key?(:include_resend_shortcut_usage)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :campaigns,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/campaigns",
            query: query_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Mailchimp::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            parsed_response = Mailchimp::Campaigns::Types::ListCampaignsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Create a new Mailchimp campaign.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Campaigns::Types::CreateCampaignsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.campaigns.create(type: "regular")
      #
      # @return [Mailchimp::Types::Campaign]
      def create(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/campaigns",
          body: Mailchimp::Campaigns::Types::CreateCampaignsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Types::Campaign.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific campaign.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Boolean, nil] :include_resend_shortcut_eligibility
      # @option params [Boolean, nil] :include_resend_shortcut_usage
      #
      # @example
      #   client.campaigns.get(campaign_id: "campaign_id")
      #
      # @return [Mailchimp::Types::Campaign]
      def get(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["include_resend_shortcut_eligibility"] = params[:include_resend_shortcut_eligibility] if params.key?(:include_resend_shortcut_eligibility)
        query_params["include_resend_shortcut_usage"] = params[:include_resend_shortcut_usage] if params.key?(:include_resend_shortcut_usage)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Types::Campaign.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Remove a campaign from your Mailchimp account.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      #
      # @example
      #   client.campaigns.delete(campaign_id: "campaign_id")
      #
      # @return [untyped]
      def delete(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Update some or all of the settings for a specific campaign.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Campaigns::Types::UpdateCampaignsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      #
      # @example
      #   client.campaigns.update(campaign_id: "campaign_id")
      #
      # @return [Mailchimp::Types::Campaign]
      def update(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Campaigns::Types::UpdateCampaignsRequest.new(params).to_h
        non_body_param_names = %w[campaign_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Types::Campaign.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Cancel a Regular or Plain-Text Campaign after you send, before all of your recipients receive it. This feature
      # is included with Mailchimp Pro.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      #
      # @example
      #   client.campaigns.create_action_cancel_send(campaign_id: "campaign_id")
      #
      # @return [untyped]
      def create_action_cancel_send(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/actions/cancel-send",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Remove the guesswork for resending a campaign to certain segments. You can use this endpoint as a shortcut to
      # replicate a campaign and resend it to common segments, such as those who didn't open the campaign, or any new
      # subscribers since it was sent.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Campaigns::Types::CreateActionCreateResendCampaignsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      #
      # @example
      #   client.campaigns.create_action_create_resend(campaign_id: "campaign_id")
      #
      # @return [Mailchimp::Types::Campaign]
      def create_action_create_resend(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Campaigns::Types::CreateActionCreateResendCampaignsRequest.new(params).to_h
        non_body_param_names = %w[campaign_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/actions/create-resend",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Types::Campaign.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Pause an RSS-Driven campaign.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      #
      # @example
      #   client.campaigns.create_action_pause(campaign_id: "campaign_id")
      #
      # @return [untyped]
      def create_action_pause(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/actions/pause",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Replicate a campaign in saved or send status.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      #
      # @example
      #   client.campaigns.create_action_replicate(campaign_id: "campaign_id")
      #
      # @return [Mailchimp::Types::Campaign]
      def create_action_replicate(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/actions/replicate",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Types::Campaign.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Resume an RSS-Driven campaign.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      #
      # @example
      #   client.campaigns.create_action_resume(campaign_id: "campaign_id")
      #
      # @return [untyped]
      def create_action_resume(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/actions/resume",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Schedule a campaign for delivery. If you're using Multivariate Campaigns to test send times or sending RSS
      # Campaigns, use the send action instead.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Campaigns::Types::CreateActionScheduleCampaignsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      #
      # @example
      #   client.campaigns.create_action_schedule(
      #     campaign_id: "campaign_id",
      #     schedule_time: "2024-01-15T09:30:00Z"
      #   )
      #
      # @return [untyped]
      def create_action_schedule(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Campaigns::Types::CreateActionScheduleCampaignsRequest.new(params).to_h
        non_body_param_names = %w[campaign_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/actions/schedule",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Send a Mailchimp campaign. For RSS Campaigns, the campaign will send according to its schedule. All other
      # campaigns will send immediately.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      #
      # @example
      #   client.campaigns.create_action_send(campaign_id: "campaign_id")
      #
      # @return [untyped]
      def create_action_send(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/actions/send",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Send a test email.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Campaigns::Types::CreateActionTestCampaignsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      #
      # @example
      #   client.campaigns.create_action_test(
      #     campaign_id: "campaign_id",
      #     send_type: "html",
      #     test_emails: ["test_emails"]
      #   )
      #
      # @return [untyped]
      def create_action_test(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Campaigns::Types::CreateActionTestCampaignsRequest.new(params).to_h
        non_body_param_names = %w[campaign_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/actions/test",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Unschedule a scheduled campaign that hasn't started sending.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      #
      # @example
      #   client.campaigns.create_action_unschedule(campaign_id: "campaign_id")
      #
      # @return [untyped]
      def create_action_unschedule(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/actions/unschedule",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Get the the HTML and plain-text content for a campaign.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.campaigns.get_content(campaign_id: "campaign_id")
      #
      # @return [Mailchimp::Types::CampaignContent]
      def get_content(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/content",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Types::CampaignContent.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Set the content for a campaign.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Types::CampaignContent]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      #
      # @example
      #   client.campaigns.upsert_content(campaign_id: "campaign_id")
      #
      # @return [Mailchimp::Types::CampaignContent]
      def upsert_content(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[campaign_id]
        body_params = params.except(*path_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/content",
          body: Mailchimp::Types::CampaignContent.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Types::CampaignContent.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get team feedback while you're working together on a Mailchimp campaign.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.campaigns.list_feedback(campaign_id: "campaign_id")
      #
      # @return [Mailchimp::Campaigns::Types::ListFeedbackCampaignsResponse]
      def list_feedback(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/feedback",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Campaigns::Types::ListFeedbackCampaignsResponse.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Add feedback on a specific campaign.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Campaigns::Types::CreateFeedbackCampaignsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      #
      # @example
      #   client.campaigns.create_feedback(
      #     campaign_id: "campaign_id",
      #     message: "message"
      #   )
      #
      # @return [Mailchimp::Campaigns::Types::CreateFeedbackCampaignsResponse]
      def create_feedback(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Campaigns::Types::CreateFeedbackCampaignsRequest.new(params).to_h
        non_body_param_names = %w[campaign_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/feedback",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Campaigns::Types::CreateFeedbackCampaignsResponse.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get a specific feedback message from a campaign.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      # @option params [String] :feedback_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.campaigns.get_feedback(
      #     campaign_id: "campaign_id",
      #     feedback_id: "feedback_id"
      #   )
      #
      # @return [Mailchimp::Types::CampaignFeedback]
      def get_feedback(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/feedback/#{URI.encode_uri_component(params[:feedback_id].to_s)}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Types::CampaignFeedback.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Remove a specific feedback message for a campaign.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      # @option params [String] :feedback_id
      #
      # @example
      #   client.campaigns.delete_feedback(
      #     campaign_id: "campaign_id",
      #     feedback_id: "feedback_id"
      #   )
      #
      # @return [untyped]
      def delete_feedback(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/feedback/#{URI.encode_uri_component(params[:feedback_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Update a specific feedback message for a campaign.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Campaigns::Types::UpdateFeedbackCampaignsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      # @option params [String] :feedback_id
      #
      # @example
      #   client.campaigns.update_feedback(
      #     campaign_id: "campaign_id",
      #     feedback_id: "feedback_id"
      #   )
      #
      # @return [Mailchimp::Types::CampaignFeedback]
      def update_feedback(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Campaigns::Types::UpdateFeedbackCampaignsRequest.new(params).to_h
        non_body_param_names = %w[campaign_id feedback_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/feedback/#{URI.encode_uri_component(params[:feedback_id].to_s)}",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Types::CampaignFeedback.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Review the send checklist for a campaign, and resolve any issues before sending.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :campaign_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.campaigns.list_send_checklist(campaign_id: "campaign_id")
      #
      # @return [Mailchimp::Campaigns::Types::ListSendChecklistCampaignsResponse]
      def list_send_checklist(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/send-checklist",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Campaigns::Types::ListSendChecklistCampaignsResponse.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
