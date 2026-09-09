# frozen_string_literal: true

module Mailchimp
  module TemplateFolders
    class Client
      # @param client [Mailchimp::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Get all folders used to organize templates.
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
      #
      # @example
      #   client.template_folders.list
      #
      # @return [Mailchimp::TemplateFolders::Types::ListTemplateFoldersResponse]
      def list(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :folders,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/template-folders",
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
            parsed_response = Mailchimp::TemplateFolders::Types::ListTemplateFoldersResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Create a new template folder.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::TemplateFolders::Types::CreateTemplateFoldersRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.template_folders.create(name: "name")
      #
      # @return [Mailchimp::TemplateFolders::Types::CreateTemplateFoldersResponse]
      def create(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/template-folders",
          body: Mailchimp::TemplateFolders::Types::CreateTemplateFoldersRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::TemplateFolders::Types::CreateTemplateFoldersResponse.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific folder used to organize templates.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :folder_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.template_folders.get(folder_id: "folder_id")
      #
      # @return [Mailchimp::TemplateFolders::Types::GetTemplateFoldersResponse]
      def get(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/template-folders/#{URI.encode_uri_component(params[:folder_id].to_s)}",
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
          Mailchimp::TemplateFolders::Types::GetTemplateFoldersResponse.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a specific template folder, and mark all the templates in the folder as 'unfiled'.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :folder_id
      #
      # @example
      #   client.template_folders.delete(folder_id: "folder_id")
      #
      # @return [untyped]
      def delete(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/template-folders/#{URI.encode_uri_component(params[:folder_id].to_s)}",
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

      # Update a specific folder used to organize templates.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::TemplateFolders::Types::UpdateTemplateFoldersRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :folder_id
      #
      # @example
      #   client.template_folders.update(
      #     folder_id: "folder_id",
      #     name: "name"
      #   )
      #
      # @return [Mailchimp::TemplateFolders::Types::UpdateTemplateFoldersResponse]
      def update(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::TemplateFolders::Types::UpdateTemplateFoldersRequest.new(params).to_h
        non_body_param_names = %w[folder_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/template-folders/#{URI.encode_uri_component(params[:folder_id].to_s)}",
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
          Mailchimp::TemplateFolders::Types::UpdateTemplateFoldersResponse.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
