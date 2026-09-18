# frozen_string_literal: true

module Mailchimp
  module Lists
    class Client
      # @param client [Mailchimp::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Get information about all lists in the account.
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
      # @option params [String, nil] :before_date_created
      # @option params [String, nil] :since_date_created
      # @option params [String, nil] :before_campaign_last_sent
      # @option params [String, nil] :since_campaign_last_sent
      # @option params [String, nil] :email
      # @option params [Mailchimp::Lists::Types::ListListsRequestSortField, nil] :sort_field
      # @option params [Mailchimp::Lists::Types::ListListsRequestSortDir, nil] :sort_dir
      # @option params [Boolean, nil] :has_ecommerce_store
      # @option params [Boolean, nil] :include_total_contacts
      #
      # @example
      #   client.lists.list
      #
      # @return [Mailchimp::Lists::Types::ListListsResponse]
      def list(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)
        query_params["before_date_created"] = params[:before_date_created] if params.key?(:before_date_created)
        query_params["since_date_created"] = params[:since_date_created] if params.key?(:since_date_created)
        query_params["before_campaign_last_sent"] = params[:before_campaign_last_sent] if params.key?(:before_campaign_last_sent)
        query_params["since_campaign_last_sent"] = params[:since_campaign_last_sent] if params.key?(:since_campaign_last_sent)
        query_params["email"] = params[:email] if params.key?(:email)
        query_params["sort_field"] = params[:sort_field] if params.key?(:sort_field)
        query_params["sort_dir"] = params[:sort_dir] if params.key?(:sort_dir)
        query_params["has_ecommerce_store"] = params[:has_ecommerce_store] if params.key?(:has_ecommerce_store)
        query_params["include_total_contacts"] = params[:include_total_contacts] if params.key?(:include_total_contacts)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :lists,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/lists",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListListsResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Create a new list in your Mailchimp account.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::CreateListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.lists.create(
      #     campaign_defaults: {
      #       from_email: "from_email",
      #       from_name: "from_name",
      #       language: "language",
      #       subject: "subject"
      #     },
      #     contact: {
      #       address1: "address1",
      #       city: "city",
      #       company: "company",
      #       country: "country"
      #     },
      #     email_type_option: true,
      #     name: "name",
      #     permission_reminder: "permission_reminder"
      #   )
      #
      # @return [Mailchimp::Types::SubscriberList]
      def create(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists",
          body: Mailchimp::Lists::Types::CreateListsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Mailchimp::Types::SubscriberList.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific list in your Mailchimp account. Results include list members who have signed up
      # but haven't confirmed their subscription yet and unsubscribed or cleaned.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Boolean, nil] :include_total_contacts
      #
      # @example
      #   client.lists.get(list_id: "list_id")
      #
      # @return [Mailchimp::Types::SubscriberList]
      def get(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["include_total_contacts"] = params[:include_total_contacts] if params.key?(:include_total_contacts)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::SubscriberList.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Batch subscribe or unsubscribe list members.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::BatchSubscribeOrUnsubscribeListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [Boolean, nil] :skip_merge_validation
      # @option params [Boolean, nil] :skip_duplicate_check
      #
      # @example
      #   client.lists.batch_subscribe_or_unsubscribe(
      #     list_id: "list_id",
      #     members: []
      #   )
      #
      # @return [Mailchimp::Lists::Types::BatchSubscribeOrUnsubscribeListsResponse]
      def batch_subscribe_or_unsubscribe(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::BatchSubscribeOrUnsubscribeListsRequest.new(params).to_h
        non_body_param_names = %w[list_id skip_merge_validation skip_duplicate_check]
        body = request_data.except(*non_body_param_names)

        query_params = {}
        query_params["skip_merge_validation"] = params[:skip_merge_validation] if params.key?(:skip_merge_validation)
        query_params["skip_duplicate_check"] = params[:skip_duplicate_check] if params.key?(:skip_duplicate_check)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}",
          query: query_params,
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
          (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::BatchSubscribeOrUnsubscribeListsResponse.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a list from your Mailchimp account. If you delete a list, you'll lose the list history—including
      # subscriber activity, unsubscribes, complaints, and bounces. You’ll also lose subscribers’ email addresses,
      # unless you exported and backed up your list.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      #
      # @example
      #   client.lists.delete(list_id: "list_id")
      #
      # @return [untyped]
      def delete(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}",
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

      # Update the settings for a specific list.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::UpdateListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      #
      # @example
      #   client.lists.update(list_id: "list_id")
      #
      # @return [Mailchimp::Types::SubscriberList]
      def update(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::UpdateListsRequest.new(params).to_h
        non_body_param_names = %w[list_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::SubscriberList.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get all abuse reports for a specific list.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      #
      # @example
      #   client.lists.list_abuse_reports(list_id: "list_id")
      #
      # @return [Mailchimp::Lists::Types::ListAbuseReportsListsResponse]
      def list_abuse_reports(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :abuse_reports,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/abuse-reports",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListAbuseReportsListsResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Get details about a specific abuse report.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :report_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      #
      # @example
      #   client.lists.get_abuse_report(
      #     list_id: "list_id",
      #     report_id: "report_id"
      #   )
      #
      # @return [Mailchimp::Types::ListsAbuseReports]
      def get_abuse_report(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/abuse-reports/#{URI.encode_uri_component(params[:report_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ListsAbuseReports.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get up to the previous 180 days of daily detailed aggregated activity stats for a list, not including Automation
      # activity.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      #
      # @example
      #   client.lists.list_activity(list_id: "list_id")
      #
      # @return [Mailchimp::Lists::Types::ListActivityListsResponse]
      def list_activity(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :activity,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/activity",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListActivityListsResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Get a list of the top email clients based on user-agent strings.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.lists.list_clients(list_id: "list_id")
      #
      # @return [Mailchimp::Lists::Types::ListClientsListsResponse]
      def list_clients(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/clients",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListClientsListsResponse.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get a month-by-month summary of a specific list's growth activity.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      # @option params [Mailchimp::Lists::Types::ListGrowthHistoryListsRequestSortField, nil] :sort_field
      # @option params [Mailchimp::Lists::Types::ListGrowthHistoryListsRequestSortDir, nil] :sort_dir
      #
      # @example
      #   client.lists.list_growth_history(list_id: "list_id")
      #
      # @return [Mailchimp::Lists::Types::ListGrowthHistoryListsResponse]
      def list_growth_history(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)
        query_params["sort_field"] = params[:sort_field] if params.key?(:sort_field)
        query_params["sort_dir"] = params[:sort_dir] if params.key?(:sort_dir)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :history,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/growth-history",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListGrowthHistoryListsResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Get a summary of a specific list's growth activity for a specific month and year.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :month
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.lists.get_growth_history(
      #     list_id: "list_id",
      #     month: "month"
      #   )
      #
      # @return [Mailchimp::Types::GrowthHistory]
      def get_growth_history(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/growth-history/#{URI.encode_uri_component(params[:month].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::GrowthHistory.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a list's interest categories.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      # @option params [String, nil] :type
      # @option params [Mailchimp::Lists::Types::ListInterestCategoriesListsRequestSortField, nil] :sort_field
      # @option params [Mailchimp::Lists::Types::ListInterestCategoriesListsRequestSortDir, nil] :sort_dir
      #
      # @example
      #   client.lists.list_interest_categories(list_id: "list_id")
      #
      # @return [Mailchimp::Lists::Types::ListInterestCategoriesListsResponse]
      def list_interest_categories(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)
        query_params["type"] = params[:type] if params.key?(:type)
        query_params["sort_field"] = params[:sort_field] if params.key?(:sort_field)
        query_params["sort_dir"] = params[:sort_dir] if params.key?(:sort_dir)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :categories,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/interest-categories",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListInterestCategoriesListsResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Create a new interest category.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::CreateInterestCategoryListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      #
      # @example
      #   client.lists.create_interest_category(
      #     list_id: "list_id",
      #     title: "title",
      #     type: "checkboxes"
      #   )
      #
      # @return [Mailchimp::Types::InterestCategory]
      def create_interest_category(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::CreateInterestCategoryListsRequest.new(params).to_h
        non_body_param_names = %w[list_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/interest-categories",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::InterestCategory.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific interest category.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :interest_category_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.lists.get_interest_category(
      #     list_id: "list_id",
      #     interest_category_id: "interest_category_id"
      #   )
      #
      # @return [Mailchimp::Types::InterestCategory]
      def get_interest_category(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/interest-categories/#{URI.encode_uri_component(params[:interest_category_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::InterestCategory.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a specific interest category.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :interest_category_id
      #
      # @example
      #   client.lists.delete_interest_category(
      #     list_id: "list_id",
      #     interest_category_id: "interest_category_id"
      #   )
      #
      # @return [untyped]
      def delete_interest_category(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/interest-categories/#{URI.encode_uri_component(params[:interest_category_id].to_s)}",
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

      # Update a specific interest category.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::UpdateInterestCategoryListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :interest_category_id
      #
      # @example
      #   client.lists.update_interest_category(
      #     list_id: "list_id",
      #     interest_category_id: "interest_category_id"
      #   )
      #
      # @return [Mailchimp::Types::InterestCategory]
      def update_interest_category(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::UpdateInterestCategoryListsRequest.new(params).to_h
        non_body_param_names = %w[list_id interest_category_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/interest-categories/#{URI.encode_uri_component(params[:interest_category_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::InterestCategory.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get a list of this category's interests.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :interest_category_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      #
      # @example
      #   client.lists.list_interest_category_interests(
      #     list_id: "list_id",
      #     interest_category_id: "interest_category_id"
      #   )
      #
      # @return [Mailchimp::Lists::Types::ListInterestCategoryInterestsListsResponse]
      def list_interest_category_interests(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :interests,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/interest-categories/#{URI.encode_uri_component(params[:interest_category_id].to_s)}/interests",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListInterestCategoryInterestsListsResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Create a new interest or 'group name' for a specific category.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::CreateInterestCategoryInterestListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :interest_category_id
      #
      # @example
      #   client.lists.create_interest_category_interest(
      #     list_id: "list_id",
      #     interest_category_id: "interest_category_id",
      #     name: "name"
      #   )
      #
      # @return [Mailchimp::Types::Interest]
      def create_interest_category_interest(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::CreateInterestCategoryInterestListsRequest.new(params).to_h
        non_body_param_names = %w[list_id interest_category_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/interest-categories/#{URI.encode_uri_component(params[:interest_category_id].to_s)}/interests",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::Interest.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get interests or 'group names' for a specific category.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :interest_category_id
      # @option params [String] :interest_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.lists.get_interest_category_interest(
      #     list_id: "list_id",
      #     interest_category_id: "interest_category_id",
      #     interest_id: "interest_id"
      #   )
      #
      # @return [Mailchimp::Types::Interest]
      def get_interest_category_interest(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/interest-categories/#{URI.encode_uri_component(params[:interest_category_id].to_s)}/interests/#{URI.encode_uri_component(params[:interest_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::Interest.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete interests or group names in a specific category.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :interest_category_id
      # @option params [String] :interest_id
      #
      # @example
      #   client.lists.delete_interest_category_interest(
      #     list_id: "list_id",
      #     interest_category_id: "interest_category_id",
      #     interest_id: "interest_id"
      #   )
      #
      # @return [untyped]
      def delete_interest_category_interest(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/interest-categories/#{URI.encode_uri_component(params[:interest_category_id].to_s)}/interests/#{URI.encode_uri_component(params[:interest_id].to_s)}",
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

      # Update interests or 'group names' for a specific category.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::UpdateInterestCategoryInterestListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :interest_category_id
      # @option params [String] :interest_id
      #
      # @example
      #   client.lists.update_interest_category_interest(
      #     list_id: "list_id",
      #     interest_category_id: "interest_category_id",
      #     interest_id: "interest_id"
      #   )
      #
      # @return [Mailchimp::Types::Interest]
      def update_interest_category_interest(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::UpdateInterestCategoryInterestListsRequest.new(params).to_h
        non_body_param_names = %w[list_id interest_category_id interest_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/interest-categories/#{URI.encode_uri_component(params[:interest_category_id].to_s)}/interests/#{URI.encode_uri_component(params[:interest_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::Interest.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get the locations (countries) that the list's subscribers have been tagged to based on geocoding their IP
      # address.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.lists.list_locations(list_id: "list_id")
      #
      # @return [Mailchimp::Lists::Types::ListLocationsListsResponse]
      def list_locations(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/locations",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListLocationsListsResponse.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about members in a specific Mailchimp list.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      # @option params [String, nil] :email_type
      # @option params [Mailchimp::Lists::Types::ListMembersListsRequestStatus, nil] :status
      # @option params [String, nil] :since_timestamp_opt
      # @option params [String, nil] :before_timestamp_opt
      # @option params [String, nil] :since_last_changed
      # @option params [String, nil] :before_last_changed
      # @option params [String, nil] :unique_email_id
      # @option params [Boolean, nil] :vip_only
      # @option params [String, nil] :interest_category_id
      # @option params [String, nil] :interest_ids
      # @option params [Mailchimp::Lists::Types::ListMembersListsRequestInterestMatch, nil] :interest_match
      # @option params [Mailchimp::Lists::Types::ListMembersListsRequestSortField, nil] :sort_field
      # @option params [Mailchimp::Lists::Types::ListMembersListsRequestSortDir, nil] :sort_dir
      # @option params [Boolean, nil] :since_last_campaign
      # @option params [String, nil] :unsubscribed_since
      #
      # @example
      #   client.lists.list_members(list_id: "list_id")
      #
      # @return [Mailchimp::Lists::Types::ListMembersListsResponse]
      def list_members(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)
        query_params["email_type"] = params[:email_type] if params.key?(:email_type)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["since_timestamp_opt"] = params[:since_timestamp_opt] if params.key?(:since_timestamp_opt)
        query_params["before_timestamp_opt"] = params[:before_timestamp_opt] if params.key?(:before_timestamp_opt)
        query_params["since_last_changed"] = params[:since_last_changed] if params.key?(:since_last_changed)
        query_params["before_last_changed"] = params[:before_last_changed] if params.key?(:before_last_changed)
        query_params["unique_email_id"] = params[:unique_email_id] if params.key?(:unique_email_id)
        query_params["vip_only"] = params[:vip_only] if params.key?(:vip_only)
        query_params["interest_category_id"] = params[:interest_category_id] if params.key?(:interest_category_id)
        query_params["interest_ids"] = params[:interest_ids] if params.key?(:interest_ids)
        query_params["interest_match"] = params[:interest_match] if params.key?(:interest_match)
        query_params["sort_field"] = params[:sort_field] if params.key?(:sort_field)
        query_params["sort_dir"] = params[:sort_dir] if params.key?(:sort_dir)
        query_params["since_last_campaign"] = params[:since_last_campaign] if params.key?(:since_last_campaign)
        query_params["unsubscribed_since"] = params[:unsubscribed_since] if params.key?(:unsubscribed_since)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :members,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/members",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListMembersListsResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Add a new member to the list.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::CreateMemberListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [Boolean, nil] :skip_merge_validation
      #
      # @example
      #   client.lists.create_member(
      #     list_id: "list_id",
      #     email_address: "email_address",
      #     status: "subscribed"
      #   )
      #
      # @return [Mailchimp::Types::ListMembers]
      def create_member(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::CreateMemberListsRequest.new(params).to_h
        non_body_param_names = %w[list_id skip_merge_validation]
        body = request_data.except(*non_body_param_names)

        query_params = {}
        query_params["skip_merge_validation"] = params[:skip_merge_validation] if params.key?(:skip_merge_validation)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/members",
          query: query_params,
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ListMembers.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific list member, including a currently subscribed, unsubscribed, or bounced member.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :subscriber_hash
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.lists.get_member(
      #     list_id: "list_id",
      #     subscriber_hash: "subscriber_hash"
      #   )
      #
      # @return [Mailchimp::Types::ListMembers]
      def get_member(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/members/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ListMembers.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Add or update a list member.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::UpsertMemberListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :subscriber_hash
      # @option params [Boolean, nil] :skip_merge_validation
      #
      # @example
      #   client.lists.upsert_member(
      #     list_id: "list_id",
      #     subscriber_hash: "subscriber_hash",
      #     email_address: "email_address"
      #   )
      #
      # @return [Mailchimp::Types::ListMembers]
      def upsert_member(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::UpsertMemberListsRequest.new(params).to_h
        non_body_param_names = %w[list_id subscriber_hash skip_merge_validation]
        body = request_data.except(*non_body_param_names)

        query_params = {}
        query_params["skip_merge_validation"] = params[:skip_merge_validation] if params.key?(:skip_merge_validation)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/members/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}",
          query: query_params,
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ListMembers.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Archive a list member. To permanently delete, use the delete-permanent action.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :subscriber_hash
      #
      # @example
      #   client.lists.delete_member(
      #     list_id: "list_id",
      #     subscriber_hash: "subscriber_hash"
      #   )
      #
      # @return [untyped]
      def delete_member(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/members/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}",
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

      # Update information for a specific list member.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::UpdateMemberListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :subscriber_hash
      # @option params [Boolean, nil] :skip_merge_validation
      #
      # @example
      #   client.lists.update_member(
      #     list_id: "list_id",
      #     subscriber_hash: "subscriber_hash"
      #   )
      #
      # @return [Mailchimp::Types::ListMembers]
      def update_member(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::UpdateMemberListsRequest.new(params).to_h
        non_body_param_names = %w[list_id subscriber_hash skip_merge_validation]
        body = request_data.except(*non_body_param_names)

        query_params = {}
        query_params["skip_merge_validation"] = params[:skip_merge_validation] if params.key?(:skip_merge_validation)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/members/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}",
          query: query_params,
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ListMembers.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete all personally identifiable information related to a list member, and remove them from a list. This will
      # make it impossible to re-import the list member.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :subscriber_hash
      #
      # @example
      #   client.lists.create_member_action_delete_permanent(
      #     list_id: "list_id",
      #     subscriber_hash: "subscriber_hash"
      #   )
      #
      # @return [untyped]
      def create_member_action_delete_permanent(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/members/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}/actions/delete-permanent",
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

      # Get the last 50 events of a member's activity on a specific list, including opens, clicks, and unsubscribes.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :subscriber_hash
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Mailchimp::Lists::Types::ListMemberActivityListsRequestActionItem, nil] :action
      #
      # @example
      #   client.lists.list_member_activity(
      #     list_id: "list_id",
      #     subscriber_hash: "subscriber_hash"
      #   )
      #
      # @return [Mailchimp::Lists::Types::ListMemberActivityListsResponse]
      def list_member_activity(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["action"] = params[:action] if params.key?(:action)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/members/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}/activity",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListMemberActivityListsResponse.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get a member's activity on a specific list, including opens, clicks, and unsubscribes.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :subscriber_hash
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      # @option params [Mailchimp::Lists::Types::ListMemberActivityFeedListsRequestActivityFiltersItem, nil] :activity_filters
      #
      # @example
      #   client.lists.list_member_activity_feed(
      #     list_id: "list_id",
      #     subscriber_hash: "subscriber_hash"
      #   )
      #
      # @return [Mailchimp::Lists::Types::ListMemberActivityFeedListsResponse]
      def list_member_activity_feed(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)
        query_params["activity_filters"] = params[:activity_filters] if params.key?(:activity_filters)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :activity,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/members/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}/activity-feed",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListMemberActivityFeedListsResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Get events for a contact.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :subscriber_hash
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.lists.list_member_events(
      #     list_id: "list_id",
      #     subscriber_hash: "subscriber_hash"
      #   )
      #
      # @return [Mailchimp::Lists::Types::ListMemberEventsListsResponse]
      def list_member_events(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :events,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/members/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}/events",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListMemberEventsListsResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Add an event for a list member.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::CreateMemberEventListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :subscriber_hash
      #
      # @example
      #   client.lists.create_member_event(
      #     list_id: "list_id",
      #     subscriber_hash: "subscriber_hash",
      #     name: "name"
      #   )
      #
      # @return [untyped]
      def create_member_event(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::CreateMemberEventListsRequest.new(params).to_h
        non_body_param_names = %w[list_id subscriber_hash]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/members/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}/events",
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

      # Get the last 50 Goal events for a member on a specific list.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :subscriber_hash
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.lists.list_member_goals(
      #     list_id: "list_id",
      #     subscriber_hash: "subscriber_hash"
      #   )
      #
      # @return [Mailchimp::Lists::Types::ListMemberGoalsListsResponse]
      def list_member_goals(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/members/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}/goals",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListMemberGoalsListsResponse.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get recent notes for a specific list member.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :subscriber_hash
      # @option params [Mailchimp::Lists::Types::ListMemberNotesListsRequestSortField, nil] :sort_field
      # @option params [Mailchimp::Lists::Types::ListMemberNotesListsRequestSortDir, nil] :sort_dir
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      #
      # @example
      #   client.lists.list_member_notes(
      #     list_id: "list_id",
      #     subscriber_hash: "subscriber_hash"
      #   )
      #
      # @return [Mailchimp::Lists::Types::ListMemberNotesListsResponse]
      def list_member_notes(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["sort_field"] = params[:sort_field] if params.key?(:sort_field)
        query_params["sort_dir"] = params[:sort_dir] if params.key?(:sort_dir)
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :notes,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/members/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}/notes",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListMemberNotesListsResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Add a new note for a specific subscriber.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::CreateMemberNoteListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :subscriber_hash
      #
      # @example
      #   client.lists.create_member_note(
      #     list_id: "list_id",
      #     subscriber_hash: "subscriber_hash"
      #   )
      #
      # @return [Mailchimp::Types::MemberNotes]
      def create_member_note(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::CreateMemberNoteListsRequest.new(params).to_h
        non_body_param_names = %w[list_id subscriber_hash]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/members/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}/notes",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::MemberNotes.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get a specific note for a specific list member.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :subscriber_hash
      # @option params [String] :note_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.lists.get_member_note(
      #     list_id: "list_id",
      #     subscriber_hash: "subscriber_hash",
      #     note_id: "note_id"
      #   )
      #
      # @return [Mailchimp::Types::MemberNotes]
      def get_member_note(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/members/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}/notes/#{URI.encode_uri_component(params[:note_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::MemberNotes.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a specific note for a specific list member.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :subscriber_hash
      # @option params [String] :note_id
      #
      # @example
      #   client.lists.delete_member_note(
      #     list_id: "list_id",
      #     subscriber_hash: "subscriber_hash",
      #     note_id: "note_id"
      #   )
      #
      # @return [untyped]
      def delete_member_note(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/members/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}/notes/#{URI.encode_uri_component(params[:note_id].to_s)}",
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

      # Update a specific note for a specific list member.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::UpdateMemberNoteListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :subscriber_hash
      # @option params [String] :note_id
      #
      # @example
      #   client.lists.update_member_note(
      #     list_id: "list_id",
      #     subscriber_hash: "subscriber_hash",
      #     note_id: "note_id"
      #   )
      #
      # @return [Mailchimp::Types::MemberNotes]
      def update_member_note(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::UpdateMemberNoteListsRequest.new(params).to_h
        non_body_param_names = %w[list_id subscriber_hash note_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/members/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}/notes/#{URI.encode_uri_component(params[:note_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::MemberNotes.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get the tags on a list member.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :subscriber_hash
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      #
      # @example
      #   client.lists.list_member_tags(
      #     list_id: "list_id",
      #     subscriber_hash: "subscriber_hash"
      #   )
      #
      # @return [Mailchimp::Lists::Types::ListMemberTagsListsResponse]
      def list_member_tags(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :tags,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/members/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}/tags",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListMemberTagsListsResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Add or remove tags from a list member. If a tag that does not exist is passed in and set as 'active', a new tag
      # will be created.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::CreateMemberTagListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :subscriber_hash
      #
      # @example
      #   client.lists.create_member_tag(
      #     list_id: "list_id",
      #     subscriber_hash: "subscriber_hash",
      #     tags: [{
      #       name: "name",
      #       status: "inactive"
      #     }]
      #   )
      #
      # @return [untyped]
      def create_member_tag(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::CreateMemberTagListsRequest.new(params).to_h
        non_body_param_names = %w[list_id subscriber_hash]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/members/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}/tags",
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

      # Get a list of all merge fields for an audience.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      # @option params [String, nil] :type
      # @option params [Boolean, nil] :required
      #
      # @example
      #   client.lists.list_merge_fields(list_id: "list_id")
      #
      # @return [Mailchimp::Lists::Types::ListMergeFieldsListsResponse]
      def list_merge_fields(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)
        query_params["type"] = params[:type] if params.key?(:type)
        query_params["required"] = params[:required] if params.key?(:required)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :merge_fields,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/merge-fields",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListMergeFieldsListsResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Add a new merge field for a specific audience.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::CreateMergeFieldListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      #
      # @example
      #   client.lists.create_merge_field(
      #     list_id: "list_id",
      #     name: "name",
      #     type: "text"
      #   )
      #
      # @return [Mailchimp::Types::MergeField]
      def create_merge_field(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::CreateMergeFieldListsRequest.new(params).to_h
        non_body_param_names = %w[list_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/merge-fields",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::MergeField.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific merge field.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :merge_id
      # @option params [String, nil] :exclude_fields
      # @option params [String, nil] :fields
      #
      # @example
      #   client.lists.get_merge_field(
      #     list_id: "list_id",
      #     merge_id: "merge_id"
      #   )
      #
      # @return [Mailchimp::Types::MergeField]
      def get_merge_field(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["fields"] = params[:fields] if params.key?(:fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/merge-fields/#{URI.encode_uri_component(params[:merge_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::MergeField.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a specific merge field.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :merge_id
      #
      # @example
      #   client.lists.delete_merge_field(
      #     list_id: "list_id",
      #     merge_id: "merge_id"
      #   )
      #
      # @return [untyped]
      def delete_merge_field(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/merge-fields/#{URI.encode_uri_component(params[:merge_id].to_s)}",
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

      # Update a specific merge field.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::UpdateMergeFieldListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :merge_id
      #
      # @example
      #   client.lists.update_merge_field(
      #     list_id: "list_id",
      #     merge_id: "merge_id"
      #   )
      #
      # @return [Mailchimp::Types::MergeField]
      def update_merge_field(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::UpdateMergeFieldListsRequest.new(params).to_h
        non_body_param_names = %w[list_id merge_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/merge-fields/#{URI.encode_uri_component(params[:merge_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::MergeField.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about all available segments for a specific list.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      # @option params [String, nil] :type
      # @option params [String, nil] :since_created_at
      # @option params [String, nil] :before_created_at
      # @option params [Boolean, nil] :include_cleaned
      # @option params [Boolean, nil] :include_transactional
      # @option params [Boolean, nil] :include_unsubscribed
      # @option params [String, nil] :since_updated_at
      # @option params [String, nil] :before_updated_at
      # @option params [Mailchimp::Lists::Types::ListSegmentsListsRequestExcludeType, nil] :exclude_type
      #
      # @example
      #   client.lists.list_segments(list_id: "list_id")
      #
      # @return [Mailchimp::Lists::Types::ListSegmentsListsResponse]
      def list_segments(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)
        query_params["type"] = params[:type] if params.key?(:type)
        query_params["since_created_at"] = params[:since_created_at] if params.key?(:since_created_at)
        query_params["before_created_at"] = params[:before_created_at] if params.key?(:before_created_at)
        query_params["include_cleaned"] = params[:include_cleaned] if params.key?(:include_cleaned)
        query_params["include_transactional"] = params[:include_transactional] if params.key?(:include_transactional)
        query_params["include_unsubscribed"] = params[:include_unsubscribed] if params.key?(:include_unsubscribed)
        query_params["since_updated_at"] = params[:since_updated_at] if params.key?(:since_updated_at)
        query_params["before_updated_at"] = params[:before_updated_at] if params.key?(:before_updated_at)
        query_params["exclude_type"] = params[:exclude_type] if params.key?(:exclude_type)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :segments,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/segments",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListSegmentsListsResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Create a new segment in a specific list.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::CreateSegmentListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      #
      # @example
      #   client.lists.create_segment(
      #     list_id: "list_id",
      #     name: "name"
      #   )
      #
      # @return [Mailchimp::Types::List]
      def create_segment(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::CreateSegmentListsRequest.new(params).to_h
        non_body_param_names = %w[list_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/segments",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::List.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific segment.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :segment_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Boolean, nil] :include_cleaned
      # @option params [Boolean, nil] :include_transactional
      # @option params [Boolean, nil] :include_unsubscribed
      #
      # @example
      #   client.lists.get_segment(
      #     list_id: "list_id",
      #     segment_id: "segment_id"
      #   )
      #
      # @return [Mailchimp::Types::List]
      def get_segment(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["include_cleaned"] = params[:include_cleaned] if params.key?(:include_cleaned)
        query_params["include_transactional"] = params[:include_transactional] if params.key?(:include_transactional)
        query_params["include_unsubscribed"] = params[:include_unsubscribed] if params.key?(:include_unsubscribed)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/segments/#{URI.encode_uri_component(params[:segment_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::List.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Batch add/remove list members to static segment
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::BatchAddOrRemoveMembersListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :segment_id
      #
      # @example
      #   client.lists.batch_add_or_remove_members(
      #     list_id: "list_id",
      #     segment_id: "segment_id"
      #   )
      #
      # @return [Mailchimp::Lists::Types::BatchAddOrRemoveMembersListsResponse]
      def batch_add_or_remove_members(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::BatchAddOrRemoveMembersListsRequest.new(params).to_h
        non_body_param_names = %w[list_id segment_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/segments/#{URI.encode_uri_component(params[:segment_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::BatchAddOrRemoveMembersListsResponse.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a specific segment in a list.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :segment_id
      #
      # @example
      #   client.lists.delete_segment(
      #     list_id: "list_id",
      #     segment_id: "segment_id"
      #   )
      #
      # @return [untyped]
      def delete_segment(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/segments/#{URI.encode_uri_component(params[:segment_id].to_s)}",
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

      # Update a specific segment in a list.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::UpdateSegmentListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :segment_id
      #
      # @example
      #   client.lists.update_segment(
      #     list_id: "list_id",
      #     segment_id: "segment_id"
      #   )
      #
      # @return [Mailchimp::Types::List]
      def update_segment(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::UpdateSegmentListsRequest.new(params).to_h
        non_body_param_names = %w[list_id segment_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/segments/#{URI.encode_uri_component(params[:segment_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::List.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about members in a saved segment.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :segment_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      # @option params [Boolean, nil] :include_cleaned
      # @option params [Boolean, nil] :include_transactional
      # @option params [Boolean, nil] :include_unsubscribed
      #
      # @example
      #   client.lists.list_segment_members(
      #     list_id: "list_id",
      #     segment_id: "segment_id"
      #   )
      #
      # @return [Mailchimp::Lists::Types::ListSegmentMembersListsResponse]
      def list_segment_members(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)
        query_params["include_cleaned"] = params[:include_cleaned] if params.key?(:include_cleaned)
        query_params["include_transactional"] = params[:include_transactional] if params.key?(:include_transactional)
        query_params["include_unsubscribed"] = params[:include_unsubscribed] if params.key?(:include_unsubscribed)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :members,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/segments/#{URI.encode_uri_component(params[:segment_id].to_s)}/members",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListSegmentMembersListsResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Add a member to a static segment.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::CreateSegmentMemberListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :segment_id
      #
      # @example
      #   client.lists.create_segment_member(
      #     list_id: "list_id",
      #     segment_id: "segment_id",
      #     email_address: "email_address"
      #   )
      #
      # @return [Mailchimp::Types::ListsSegmentsMembers]
      def create_segment_member(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::CreateSegmentMemberListsRequest.new(params).to_h
        non_body_param_names = %w[list_id segment_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/segments/#{URI.encode_uri_component(params[:segment_id].to_s)}/members",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ListsSegmentsMembers.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Remove a member from the specified static segment.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :segment_id
      # @option params [String] :subscriber_hash
      #
      # @example
      #   client.lists.delete_segment_member(
      #     list_id: "list_id",
      #     segment_id: "segment_id",
      #     subscriber_hash: "subscriber_hash"
      #   )
      #
      # @return [untyped]
      def delete_segment_member(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/segments/#{URI.encode_uri_component(params[:segment_id].to_s)}/members/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}",
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

      # Get signup forms for a specific list.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      #
      # @example
      #   client.lists.list_signup_forms(list_id: "list_id")
      #
      # @return [Mailchimp::Lists::Types::ListSignupFormsListsResponse]
      def list_signup_forms(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/signup-forms",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListSignupFormsListsResponse.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Customize a list's default signup form.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::CreateSignupFormListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      #
      # @example
      #   client.lists.create_signup_form(list_id: "list_id")
      #
      # @return [Mailchimp::Types::SignupForm]
      def create_signup_form(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::CreateSignupFormListsRequest.new(params).to_h
        non_body_param_names = %w[list_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/signup-forms",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::SignupForm.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about all available surveys for a specific list.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      #
      # @example
      #   client.lists.list_surveys(list_id: "list_id")
      #
      # @return [Object]
      def list_surveys(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/surveys",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Create a draft survey for an audience.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::CreateSurveyListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      #
      # @example
      #   client.lists.create_survey(list_id: "list_id")
      #
      # @return [Object]
      def create_survey(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::CreateSurveyListsRequest.new(params).to_h
        non_body_param_names = %w[list_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/surveys",
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
          (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get details about a specific survey.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :survey_id
      #
      # @example
      #   client.lists.get_survey(
      #     list_id: "list_id",
      #     survey_id: "survey_id"
      #   )
      #
      # @return [Object]
      def get_survey(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/surveys/#{URI.encode_uri_component(params[:survey_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a survey.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :survey_id
      #
      # @example
      #   client.lists.delete_survey(
      #     list_id: "list_id",
      #     survey_id: "survey_id"
      #   )
      #
      # @return [untyped]
      def delete_survey(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/surveys/#{URI.encode_uri_component(params[:survey_id].to_s)}",
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

      # Update a survey. When sections is provided, send the complete section list in display order. Any existing
      # section not included is deleted.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::UpdateSurveyListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :survey_id
      #
      # @example
      #   client.lists.update_survey(
      #     list_id: "list_id",
      #     survey_id: "survey_id"
      #   )
      #
      # @return [Object]
      def update_survey(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::UpdateSurveyListsRequest.new(params).to_h
        non_body_param_names = %w[list_id survey_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/surveys/#{URI.encode_uri_component(params[:survey_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Replicate a survey.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Lists::Types::CreateListSurveyActionReplicateListsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id_path_param
      # @option params [String] :survey_id
      #
      # @example
      #   client.lists.create_list_survey_action_replicate(
      #     list_id_path_param: "list_id",
      #     survey_id: "survey_id"
      #   )
      #
      # @return [Object]
      def create_list_survey_action_replicate(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Lists::Types::CreateListSurveyActionReplicateListsRequest.new(params).to_h
        non_body_param_names = %w[list_idPathParam survey_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id_path_param].to_s)}/surveys/#{URI.encode_uri_component(params[:survey_id].to_s)}/actions/replicate",
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
          (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Search for tags on a list by name. If no name is provided, will return all tags on the list.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String, nil] :name
      #
      # @example
      #   client.lists.list_tag_search(list_id: "list_id")
      #
      # @return [Mailchimp::Lists::Types::ListTagSearchListsResponse]
      def list_tag_search(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["name"] = params[:name] if params.key?(:name)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/tag-search",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListTagSearchListsResponse.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about all webhooks for a specific list.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      #
      # @example
      #   client.lists.list_webhooks(list_id: "list_id")
      #
      # @return [Mailchimp::Lists::Types::ListWebhooksListsResponse]
      def list_webhooks(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/webhooks",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::ListWebhooksListsResponse.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Create a new webhook for a specific list.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Types::AddWebhook]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      #
      # @example
      #   client.lists.create_webhook(list_id: "list_id")
      #
      # @return [Mailchimp::Lists::Types::CreateWebhookListsResponse]
      def create_webhook(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[list_id]
        body_params = params.except(*path_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/webhooks",
          body: Mailchimp::Types::AddWebhook.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Mailchimp::Lists::Types::CreateWebhookListsResponse.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific webhook.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :webhook_id
      #
      # @example
      #   client.lists.get_webhook(
      #     list_id: "list_id",
      #     webhook_id: "webhook_id"
      #   )
      #
      # @return [Mailchimp::Types::ListWebhooks]
      def get_webhook(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/webhooks/#{URI.encode_uri_component(params[:webhook_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ListWebhooks.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a specific webhook in a list.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :webhook_id
      #
      # @example
      #   client.lists.delete_webhook(
      #     list_id: "list_id",
      #     webhook_id: "webhook_id"
      #   )
      #
      # @return [untyped]
      def delete_webhook(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/webhooks/#{URI.encode_uri_component(params[:webhook_id].to_s)}",
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

      # Update the settings for an existing webhook.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Types::AddWebhook]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :webhook_id
      #
      # @example
      #   client.lists.update_webhook(
      #     list_id: "list_id",
      #     webhook_id: "webhook_id"
      #   )
      #
      # @return [Mailchimp::Types::ListWebhooks]
      def update_webhook(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[list_id webhook_id]
        body_params = params.except(*path_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/webhooks/#{URI.encode_uri_component(params[:webhook_id].to_s)}",
          body: Mailchimp::Types::AddWebhook.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ListWebhooks.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
