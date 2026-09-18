# frozen_string_literal: true

module Mailchimp
  module Audiences
    class Client
      # @param client [Mailchimp::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Get a list of omni-channel contacts for a given audience.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :audience_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [String, nil] :cursor
      # @option params [String, nil] :created_before
      # @option params [String, nil] :created_since
      # @option params [String, nil] :updated_before
      # @option params [String, nil] :updated_since
      # @option params [Mailchimp::Audiences::Types::GetAudienceContactListRequestSortField, nil] :sort_field
      # @option params [Mailchimp::Audiences::Types::GetAudienceContactListRequestSortDir, nil] :sort_dir
      #
      # @example
      #   client.audiences.get_audience_contact_list(audience_id: "audience_id")
      #
      # @return [Mailchimp::Audiences::Types::GetAudienceContactListResponse]
      def get_audience_contact_list(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["cursor"] = params[:cursor] if params.key?(:cursor)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
        query_params["created_since"] = params[:created_since] if params.key?(:created_since)
        query_params["updated_before"] = params[:updated_before] if params.key?(:updated_before)
        query_params["updated_since"] = params[:updated_since] if params.key?(:updated_since)
        query_params["sort_field"] = params[:sort_field] if params.key?(:sort_field)
        query_params["sort_dir"] = params[:sort_dir] if params.key?(:sort_dir)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/audiences/#{URI.encode_uri_component(params[:audience_id].to_s)}/contacts",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Audiences::Types::GetAudienceContactListResponse.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Create a new omni-channel contact for an audience.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Audiences::Types::CreateAudienceContactRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :audience_id
      # @option params [Mailchimp::Audiences::Types::CreateAudienceContactRequestMergeFieldValidationMode, nil] :merge_field_validation_mode
      # @option params [Mailchimp::Audiences::Types::CreateAudienceContactRequestDataMode, nil] :data_mode
      #
      # @example
      #   client.audiences.create_audience_contact(audience_id: "audience_id")
      #
      # @return [Mailchimp::Types::AudiencesContact]
      def create_audience_contact(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Audiences::Types::CreateAudienceContactRequest.new(params).to_h
        non_body_param_names = %w[audience_id merge_field_validation_mode data_mode]
        body = request_data.except(*non_body_param_names)

        query_params = {}
        query_params["merge_field_validation_mode"] = params[:merge_field_validation_mode] if params.key?(:merge_field_validation_mode)
        query_params["data_mode"] = params[:data_mode] if params.key?(:data_mode)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/audiences/#{URI.encode_uri_component(params[:audience_id].to_s)}/contacts",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::AudiencesContact.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieve a specific omni-channel contact in an audience.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :audience_id
      # @option params [String] :contact_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.audiences.get_audience_contact(
      #     audience_id: "audience_id",
      #     contact_id: "contact_id"
      #   )
      #
      # @return [Mailchimp::Types::AudiencesContact]
      def get_audience_contact(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/audiences/#{URI.encode_uri_component(params[:audience_id].to_s)}/contacts/#{URI.encode_uri_component(params[:contact_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::AudiencesContact.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Update an existing omni-channel contact.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Audiences::Types::PatchAudienceContactRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :audience_id
      # @option params [String] :contact_id
      # @option params [Mailchimp::Audiences::Types::PatchAudienceContactRequestMergeFieldValidationMode, nil] :merge_field_validation_mode
      # @option params [Mailchimp::Audiences::Types::PatchAudienceContactRequestDataMode, nil] :data_mode
      #
      # @example
      #   client.audiences.patch_audience_contact(
      #     audience_id: "audience_id",
      #     contact_id: "contact_id"
      #   )
      #
      # @return [Mailchimp::Types::AudiencesContact]
      def patch_audience_contact(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Audiences::Types::PatchAudienceContactRequest.new(params).to_h
        non_body_param_names = %w[audience_id contact_id merge_field_validation_mode data_mode]
        body = request_data.except(*non_body_param_names)

        query_params = {}
        query_params["merge_field_validation_mode"] = params[:merge_field_validation_mode] if params.key?(:merge_field_validation_mode)
        query_params["data_mode"] = params[:data_mode] if params.key?(:data_mode)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/audiences/#{URI.encode_uri_component(params[:audience_id].to_s)}/contacts/#{URI.encode_uri_component(params[:contact_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::AudiencesContact.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Archives a Contact.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :audience_id
      # @option params [String] :contact_id
      #
      # @example
      #   client.audiences.post_audiences_contacts_actions_archive(
      #     audience_id: "audience_id",
      #     contact_id: "contact_id"
      #   )
      #
      # @return [untyped]
      def post_audiences_contacts_actions_archive(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/audiences/#{URI.encode_uri_component(params[:audience_id].to_s)}/contacts/#{URI.encode_uri_component(params[:contact_id].to_s)}/actions/archive",
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

      # Forgets a Contact.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :audience_id
      # @option params [String] :contact_id
      #
      # @example
      #   client.audiences.post_audiences_contacts_actions_forget(
      #     audience_id: "audience_id",
      #     contact_id: "contact_id"
      #   )
      #
      # @return [untyped]
      def post_audiences_contacts_actions_forget(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/audiences/#{URI.encode_uri_component(params[:audience_id].to_s)}/contacts/#{URI.encode_uri_component(params[:contact_id].to_s)}/actions/forget",
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
    end
  end
end
