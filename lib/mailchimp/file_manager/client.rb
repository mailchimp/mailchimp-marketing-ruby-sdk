# frozen_string_literal: true

module Mailchimp
  module FileManager
    class Client
      # @param client [Mailchimp::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Get information about the file-manager endpoint's resources
      #
      # @param request_options [Hash]
      # @param _params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.file_manager.list
      #
      # @return [Array[Mailchimp::FileManager::Types::ListFileManagerResponseItem]]
      def list(request_options: {}, **_params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/file-manager",
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

      # Get a list of available images and files stored in the File Manager for the account.
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
      # @option params [String, nil] :type
      # @option params [String, nil] :created_by
      # @option params [String, nil] :before_created_at
      # @option params [String, nil] :since_created_at
      # @option params [Mailchimp::FileManager::Types::ListFilesFileManagerRequestSortField, nil] :sort_field
      # @option params [Mailchimp::FileManager::Types::ListFilesFileManagerRequestSortDir, nil] :sort_dir
      #
      # @example
      #   client.file_manager.list_files
      #
      # @return [Mailchimp::FileManager::Types::ListFilesFileManagerResponse]
      def list_files(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)
        query_params["type"] = params[:type] if params.key?(:type)
        query_params["created_by"] = params[:created_by] if params.key?(:created_by)
        query_params["before_created_at"] = params[:before_created_at] if params.key?(:before_created_at)
        query_params["since_created_at"] = params[:since_created_at] if params.key?(:since_created_at)
        query_params["sort_field"] = params[:sort_field] if params.key?(:sort_field)
        query_params["sort_dir"] = params[:sort_dir] if params.key?(:sort_dir)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :files,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/file-manager/files",
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
            parsed_response = Mailchimp::FileManager::Types::ListFilesFileManagerResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Upload a new image or file to the File Manager.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::FileManager::Types::CreateFileFileManagerRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.file_manager.create_file(
      #     file_data: "file_data",
      #     name: "name"
      #   )
      #
      # @return [Mailchimp::Types::GalleryFile]
      def create_file(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/file-manager/files",
          body: Mailchimp::FileManager::Types::CreateFileFileManagerRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Types::GalleryFile.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific file in the File Manager.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :file_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.file_manager.get_file(file_id: "file_id")
      #
      # @return [Mailchimp::Types::GalleryFile]
      def get_file(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/file-manager/files/#{URI.encode_uri_component(params[:file_id].to_s)}",
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
          Mailchimp::Types::GalleryFile.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Remove a specific file from the File Manager.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :file_id
      #
      # @example
      #   client.file_manager.delete_file(file_id: "file_id")
      #
      # @return [untyped]
      def delete_file(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/file-manager/files/#{URI.encode_uri_component(params[:file_id].to_s)}",
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

      # Update a file in the File Manager.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::FileManager::Types::UpdateFileFileManagerRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :file_id
      #
      # @example
      #   client.file_manager.update_file(file_id: "file_id")
      #
      # @return [Mailchimp::Types::GalleryFile]
      def update_file(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::FileManager::Types::UpdateFileFileManagerRequest.new(params).to_h
        non_body_param_names = %w[file_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/file-manager/files/#{URI.encode_uri_component(params[:file_id].to_s)}",
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
          Mailchimp::Types::GalleryFile.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get a list of all folders in the File Manager.
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
      # @option params [String, nil] :created_by
      # @option params [String, nil] :before_created_at
      # @option params [String, nil] :since_created_at
      #
      # @example
      #   client.file_manager.list_folders
      #
      # @return [Mailchimp::FileManager::Types::ListFoldersFileManagerResponse]
      def list_folders(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)
        query_params["created_by"] = params[:created_by] if params.key?(:created_by)
        query_params["before_created_at"] = params[:before_created_at] if params.key?(:before_created_at)
        query_params["since_created_at"] = params[:since_created_at] if params.key?(:since_created_at)

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
            path: "3.0/file-manager/folders",
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
            parsed_response = Mailchimp::FileManager::Types::ListFoldersFileManagerResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Create a new folder in the File Manager.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::FileManager::Types::CreateFolderFileManagerRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.file_manager.create_folder(name: "name")
      #
      # @return [Mailchimp::FileManager::Types::CreateFolderFileManagerResponse]
      def create_folder(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/file-manager/folders",
          body: Mailchimp::FileManager::Types::CreateFolderFileManagerRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::FileManager::Types::CreateFolderFileManagerResponse.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific folder in the File Manager.
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
      #   client.file_manager.get_folder(folder_id: "folder_id")
      #
      # @return [Mailchimp::FileManager::Types::GetFolderFileManagerResponse]
      def get_folder(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/file-manager/folders/#{URI.encode_uri_component(params[:folder_id].to_s)}",
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
          Mailchimp::FileManager::Types::GetFolderFileManagerResponse.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a specific folder in the File Manager.
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
      #   client.file_manager.delete_folder(folder_id: "folder_id")
      #
      # @return [untyped]
      def delete_folder(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/file-manager/folders/#{URI.encode_uri_component(params[:folder_id].to_s)}",
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

      # Update a specific File Manager folder.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::FileManager::Types::UpdateFolderFileManagerRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :folder_id
      #
      # @example
      #   client.file_manager.update_folder(
      #     folder_id: "folder_id",
      #     name: "name"
      #   )
      #
      # @return [Mailchimp::FileManager::Types::UpdateFolderFileManagerResponse]
      def update_folder(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::FileManager::Types::UpdateFolderFileManagerRequest.new(params).to_h
        non_body_param_names = %w[folder_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/file-manager/folders/#{URI.encode_uri_component(params[:folder_id].to_s)}",
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
          Mailchimp::FileManager::Types::UpdateFolderFileManagerResponse.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get a list of available images and files stored in this folder.
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
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      # @option params [String, nil] :type
      # @option params [String, nil] :created_by
      # @option params [String, nil] :before_created_at
      # @option params [String, nil] :since_created_at
      # @option params [Mailchimp::FileManager::Types::ListFolderFilesFileManagerRequestSortField, nil] :sort_field
      # @option params [Mailchimp::FileManager::Types::ListFolderFilesFileManagerRequestSortDir, nil] :sort_dir
      #
      # @example
      #   client.file_manager.list_folder_files(folder_id: "folder_id")
      #
      # @return [Mailchimp::FileManager::Types::ListFolderFilesFileManagerResponse]
      def list_folder_files(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)
        query_params["type"] = params[:type] if params.key?(:type)
        query_params["created_by"] = params[:created_by] if params.key?(:created_by)
        query_params["before_created_at"] = params[:before_created_at] if params.key?(:before_created_at)
        query_params["since_created_at"] = params[:since_created_at] if params.key?(:since_created_at)
        query_params["sort_field"] = params[:sort_field] if params.key?(:sort_field)
        query_params["sort_dir"] = params[:sort_dir] if params.key?(:sort_dir)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :files,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/file-manager/folders/#{URI.encode_uri_component(params[:folder_id].to_s)}/files",
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
            parsed_response = Mailchimp::FileManager::Types::ListFolderFilesFileManagerResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
