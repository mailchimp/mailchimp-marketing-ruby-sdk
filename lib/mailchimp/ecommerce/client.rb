# frozen_string_literal: true

module Mailchimp
  module Ecommerce
    class Client
      # @param client [Mailchimp::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Get information about the e-commerce endpoint's resources.
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
      #   client.ecommerce.list
      #
      # @return [Mailchimp::Ecommerce::Types::ListEcommerceResponse]
      def list(request_options: {}, **_params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/ecommerce",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Mailchimp::Ecommerce::Types::ListEcommerceResponse.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about an account's orders.
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
      # @option params [String, nil] :campaign_id
      # @option params [String, nil] :outreach_id
      # @option params [String, nil] :customer_id
      # @option params [Boolean, nil] :has_outreach
      #
      # @example
      #   client.ecommerce.list_orders
      #
      # @return [Mailchimp::Ecommerce::Types::ListOrdersEcommerceResponse]
      def list_orders(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)
        query_params["campaign_id"] = params[:campaign_id] if params.key?(:campaign_id)
        query_params["outreach_id"] = params[:outreach_id] if params.key?(:outreach_id)
        query_params["customer_id"] = params[:customer_id] if params.key?(:customer_id)
        query_params["has_outreach"] = params[:has_outreach] if params.key?(:has_outreach)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :orders,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/ecommerce/orders",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Ecommerce::Types::ListOrdersEcommerceResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Get information about all stores in the account.
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
      #   client.ecommerce.list_stores
      #
      # @return [Mailchimp::Ecommerce::Types::ListStoresEcommerceResponse]
      def list_stores(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :stores,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/ecommerce/stores",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Ecommerce::Types::ListStoresEcommerceResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Add a new store to your Mailchimp account.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::CreateStoreEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.ecommerce.create_store(
      #     currency_code: "USD",
      #     id: "example_store",
      #     list_id: "1a2df69511",
      #     name: "Freddie's Cat Hat Emporium"
      #   )
      #
      # @return [Mailchimp::Types::ECommerceStore]
      def create_store(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/ecommerce/stores",
          body: Mailchimp::Ecommerce::Types::CreateStoreEcommerceRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceStore.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific store.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.ecommerce.get_store(store_id: "store_id")
      #
      # @return [Mailchimp::Types::ECommerceStore]
      def get_store(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceStore.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a store. Deleting a store will also delete any associated subresources, including Customers, Orders,
      # Products, and Carts.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      #
      # @example
      #   client.ecommerce.delete_store(store_id: "store_id")
      #
      # @return [untyped]
      def delete_store(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}",
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

      # Update a store.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::UpdateStoreEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      #
      # @example
      #   client.ecommerce.update_store(store_id: "store_id")
      #
      # @return [Mailchimp::Types::ECommerceStore]
      def update_store(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::UpdateStoreEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceStore.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a store's carts.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      #
      # @example
      #   client.ecommerce.list_store_carts(store_id: "store_id")
      #
      # @return [Mailchimp::Ecommerce::Types::ListStoreCartsEcommerceResponse]
      def list_store_carts(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :carts,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/carts",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Ecommerce::Types::ListStoreCartsEcommerceResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Add a new cart to a store.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::CreateStoreCartEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      #
      # @example
      #   client.ecommerce.create_store_cart(
      #     store_id: "store_id",
      #     currency_code: "currency_code",
      #     customer: {
      #       id: "id"
      #     },
      #     id: "id",
      #     lines: [{
      #       id: "id",
      #       price: 1.1,
      #       product_id: "product_id",
      #       product_variant_id: "product_variant_id",
      #       quantity: 1
      #     }],
      #     order_total: 1.1
      #   )
      #
      # @return [Mailchimp::Types::ECommerceCart]
      def create_store_cart(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::CreateStoreCartEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/carts",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceCart.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific cart.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :cart_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.ecommerce.get_store_cart(
      #     store_id: "store_id",
      #     cart_id: "cart_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommerceCart]
      def get_store_cart(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/carts/#{URI.encode_uri_component(params[:cart_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceCart.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a cart.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :cart_id
      #
      # @example
      #   client.ecommerce.delete_store_cart(
      #     store_id: "store_id",
      #     cart_id: "cart_id"
      #   )
      #
      # @return [untyped]
      def delete_store_cart(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/carts/#{URI.encode_uri_component(params[:cart_id].to_s)}",
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

      # Update a specific cart.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::UpdateStoreCartEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :cart_id
      #
      # @example
      #   client.ecommerce.update_store_cart(
      #     store_id: "store_id",
      #     cart_id: "cart_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommerceCart]
      def update_store_cart(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::UpdateStoreCartEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id cart_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/carts/#{URI.encode_uri_component(params[:cart_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceCart.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a cart's line items.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :cart_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      #
      # @example
      #   client.ecommerce.list_store_cart_lines(
      #     store_id: "store_id",
      #     cart_id: "cart_id"
      #   )
      #
      # @return [Mailchimp::Ecommerce::Types::ListStoreCartLinesEcommerceResponse]
      def list_store_cart_lines(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :lines,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/carts/#{URI.encode_uri_component(params[:cart_id].to_s)}/lines",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Ecommerce::Types::ListStoreCartLinesEcommerceResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Add a new line item to an existing cart.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::CreateStoreCartLineEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :cart_id
      #
      # @example
      #   client.ecommerce.create_store_cart_line(
      #     store_id: "store_id",
      #     cart_id: "cart_id",
      #     id: "id",
      #     price: 1.1,
      #     product_id: "product_id",
      #     product_variant_id: "product_variant_id",
      #     quantity: 1
      #   )
      #
      # @return [Mailchimp::Types::ECommerceCartLineItem]
      def create_store_cart_line(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::CreateStoreCartLineEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id cart_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/carts/#{URI.encode_uri_component(params[:cart_id].to_s)}/lines",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceCartLineItem.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific cart line item.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :cart_id
      # @option params [String] :line_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.ecommerce.get_store_cart_line(
      #     store_id: "store_id",
      #     cart_id: "cart_id",
      #     line_id: "line_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommerceCartLineItem]
      def get_store_cart_line(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/carts/#{URI.encode_uri_component(params[:cart_id].to_s)}/lines/#{URI.encode_uri_component(params[:line_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceCartLineItem.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a specific cart line item.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :cart_id
      # @option params [String] :line_id
      #
      # @example
      #   client.ecommerce.delete_store_cart_line(
      #     store_id: "store_id",
      #     cart_id: "cart_id",
      #     line_id: "line_id"
      #   )
      #
      # @return [untyped]
      def delete_store_cart_line(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/carts/#{URI.encode_uri_component(params[:cart_id].to_s)}/lines/#{URI.encode_uri_component(params[:line_id].to_s)}",
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

      # Update a specific cart line item.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::UpdateStoreCartLineEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :cart_id
      # @option params [String] :line_id
      #
      # @example
      #   client.ecommerce.update_store_cart_line(
      #     store_id: "store_id",
      #     cart_id: "cart_id",
      #     line_id: "line_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommerceCartLineItem]
      def update_store_cart_line(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::UpdateStoreCartLineEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id cart_id line_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/carts/#{URI.encode_uri_component(params[:cart_id].to_s)}/lines/#{URI.encode_uri_component(params[:line_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceCartLineItem.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a store's customers.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      # @option params [String, nil] :email_address
      #
      # @example
      #   client.ecommerce.list_store_customers(store_id: "store_id")
      #
      # @return [Mailchimp::Ecommerce::Types::ListStoreCustomersEcommerceResponse]
      def list_store_customers(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)
        query_params["email_address"] = params[:email_address] if params.key?(:email_address)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :customers,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/customers",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Ecommerce::Types::ListStoreCustomersEcommerceResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Add a new customer to a store.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::CreateStoreCustomerEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      #
      # @example
      #   client.ecommerce.create_store_customer(
      #     store_id: "store_id",
      #     id: "id",
      #     opt_in_status: true
      #   )
      #
      # @return [Mailchimp::Types::ECommerceCustomer]
      def create_store_customer(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::CreateStoreCustomerEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/customers",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceCustomer.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific customer.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :customer_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.ecommerce.get_store_customer(
      #     store_id: "store_id",
      #     customer_id: "customer_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommerceCustomer]
      def get_store_customer(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/customers/#{URI.encode_uri_component(params[:customer_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceCustomer.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Add or update a customer.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::UpsertStoreCustomerEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :customer_id
      #
      # @example
      #   client.ecommerce.upsert_store_customer(
      #     store_id: "store_id",
      #     customer_id: "customer_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommerceCustomer]
      def upsert_store_customer(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::UpsertStoreCustomerEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id customer_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/customers/#{URI.encode_uri_component(params[:customer_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceCustomer.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a customer from a store.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :customer_id
      #
      # @example
      #   client.ecommerce.delete_store_customer(
      #     store_id: "store_id",
      #     customer_id: "customer_id"
      #   )
      #
      # @return [untyped]
      def delete_store_customer(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/customers/#{URI.encode_uri_component(params[:customer_id].to_s)}",
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

      # Update a customer.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Types::EcommerceStoresCartsPatch]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :customer_id
      #
      # @example
      #   client.ecommerce.update_store_customer(
      #     store_id: "store_id",
      #     customer_id: "customer_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommerceCustomer]
      def update_store_customer(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[store_id customer_id]
        body_params = params.except(*path_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/customers/#{URI.encode_uri_component(params[:customer_id].to_s)}",
          body: Mailchimp::Types::EcommerceStoresCartsPatch.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceCustomer.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a store's orders.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      # @option params [String, nil] :customer_id
      # @option params [Boolean, nil] :has_outreach
      # @option params [String, nil] :campaign_id
      # @option params [String, nil] :outreach_id
      #
      # @example
      #   client.ecommerce.list_store_orders(store_id: "store_id")
      #
      # @return [Mailchimp::Ecommerce::Types::ListStoreOrdersEcommerceResponse]
      def list_store_orders(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)
        query_params["customer_id"] = params[:customer_id] if params.key?(:customer_id)
        query_params["has_outreach"] = params[:has_outreach] if params.key?(:has_outreach)
        query_params["campaign_id"] = params[:campaign_id] if params.key?(:campaign_id)
        query_params["outreach_id"] = params[:outreach_id] if params.key?(:outreach_id)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :orders,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/orders",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Ecommerce::Types::ListStoreOrdersEcommerceResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Add a new order to a store.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      #
      # @example
      #   client.ecommerce.create_store_order(
      #     store_id: "store_id",
      #     currency_code: "currency_code",
      #     customer: {
      #       id: "id"
      #     },
      #     id: "id",
      #     lines: [{
      #       id: "id",
      #       price: 1.1,
      #       product_id: "product_id",
      #       product_variant_id: "product_variant_id",
      #       quantity: 1
      #     }],
      #     order_total: 1.1
      #   )
      #
      # @return [Mailchimp::Types::ECommerceOrder]
      def create_store_order(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/orders",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceOrder.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific order.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :order_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.ecommerce.get_store_order(
      #     store_id: "store_id",
      #     order_id: "order_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommerceOrder]
      def get_store_order(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/orders/#{URI.encode_uri_component(params[:order_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceOrder.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete an order.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :order_id
      #
      # @example
      #   client.ecommerce.delete_store_order(
      #     store_id: "store_id",
      #     order_id: "order_id"
      #   )
      #
      # @return [untyped]
      def delete_store_order(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/orders/#{URI.encode_uri_component(params[:order_id].to_s)}",
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

      # Update a specific order.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :order_id
      #
      # @example
      #   client.ecommerce.update_store_order(
      #     store_id: "store_id",
      #     order_id: "order_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommerceOrder]
      def update_store_order(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id order_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/orders/#{URI.encode_uri_component(params[:order_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceOrder.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about an order's line items.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :order_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      #
      # @example
      #   client.ecommerce.list_store_order_lines(
      #     store_id: "store_id",
      #     order_id: "order_id"
      #   )
      #
      # @return [Mailchimp::Ecommerce::Types::ListStoreOrderLinesEcommerceResponse]
      def list_store_order_lines(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :lines,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/orders/#{URI.encode_uri_component(params[:order_id].to_s)}/lines",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Ecommerce::Types::ListStoreOrderLinesEcommerceResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Add a new line item to an existing order.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::CreateStoreOrderLineEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :order_id
      #
      # @example
      #   client.ecommerce.create_store_order_line(
      #     store_id: "store_id",
      #     order_id: "order_id",
      #     id: "id",
      #     price: 1.1,
      #     product_id: "product_id",
      #     product_variant_id: "product_variant_id",
      #     quantity: 1
      #   )
      #
      # @return [Mailchimp::Types::ECommerceOrderLineItem]
      def create_store_order_line(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::CreateStoreOrderLineEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id order_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/orders/#{URI.encode_uri_component(params[:order_id].to_s)}/lines",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceOrderLineItem.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific order line item.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :order_id
      # @option params [String] :line_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.ecommerce.get_store_order_line(
      #     store_id: "store_id",
      #     order_id: "order_id",
      #     line_id: "line_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommerceOrderLineItem]
      def get_store_order_line(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/orders/#{URI.encode_uri_component(params[:order_id].to_s)}/lines/#{URI.encode_uri_component(params[:line_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceOrderLineItem.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a specific order line item.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :order_id
      # @option params [String] :line_id
      #
      # @example
      #   client.ecommerce.delete_store_order_line(
      #     store_id: "store_id",
      #     order_id: "order_id",
      #     line_id: "line_id"
      #   )
      #
      # @return [untyped]
      def delete_store_order_line(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/orders/#{URI.encode_uri_component(params[:order_id].to_s)}/lines/#{URI.encode_uri_component(params[:line_id].to_s)}",
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

      # Update a specific order line item.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::UpdateStoreOrderLineEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :order_id
      # @option params [String] :line_id
      #
      # @example
      #   client.ecommerce.update_store_order_line(
      #     store_id: "store_id",
      #     order_id: "order_id",
      #     line_id: "line_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommerceOrderLineItem]
      def update_store_order_line(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::UpdateStoreOrderLineEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id order_id line_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/orders/#{URI.encode_uri_component(params[:order_id].to_s)}/lines/#{URI.encode_uri_component(params[:line_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceOrderLineItem.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a store's products.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      #
      # @example
      #   client.ecommerce.list_store_products(store_id: "store_id")
      #
      # @return [Mailchimp::Ecommerce::Types::ListStoreProductsEcommerceResponse]
      def list_store_products(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :products,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/products",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Ecommerce::Types::ListStoreProductsEcommerceResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Add a new product to a store.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Types::EcommerceStoresOrdersPost]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      #
      # @example
      #   client.ecommerce.create_store_product(
      #     store_id: "store_id",
      #     id: "id",
      #     title: "Cat Hat",
      #     variants: [{
      #       id: "id",
      #       title: "Cat Hat"
      #     }]
      #   )
      #
      # @return [Mailchimp::Types::ECommerceProduct]
      def create_store_product(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[store_id]
        body_params = params.except(*path_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/products",
          body: Mailchimp::Types::EcommerceStoresOrdersPost.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceProduct.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific product.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :product_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.ecommerce.get_store_product(
      #     store_id: "store_id",
      #     product_id: "product_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommerceProduct]
      def get_store_product(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/products/#{URI.encode_uri_component(params[:product_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceProduct.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Update a specific product.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::UpsertStoreProductEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :product_id
      #
      # @example
      #   client.ecommerce.upsert_store_product(
      #     store_id: "store_id",
      #     product_id: "product_id",
      #     id: "id"
      #   )
      #
      # @return [Mailchimp::Types::ECommerceProduct]
      def upsert_store_product(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::UpsertStoreProductEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id product_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/products/#{URI.encode_uri_component(params[:product_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceProduct.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a product.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :product_id
      #
      # @example
      #   client.ecommerce.delete_store_product(
      #     store_id: "store_id",
      #     product_id: "product_id"
      #   )
      #
      # @return [untyped]
      def delete_store_product(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/products/#{URI.encode_uri_component(params[:product_id].to_s)}",
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

      # Update a specific product.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::UpdateStoreProductEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :product_id
      #
      # @example
      #   client.ecommerce.update_store_product(
      #     store_id: "store_id",
      #     product_id: "product_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommerceProduct]
      def update_store_product(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::UpdateStoreProductEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id product_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/products/#{URI.encode_uri_component(params[:product_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceProduct.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a product's images.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :product_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      #
      # @example
      #   client.ecommerce.list_store_product_images(
      #     store_id: "store_id",
      #     product_id: "product_id"
      #   )
      #
      # @return [Mailchimp::Ecommerce::Types::ListStoreProductImagesEcommerceResponse]
      def list_store_product_images(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :images,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/products/#{URI.encode_uri_component(params[:product_id].to_s)}/images",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Ecommerce::Types::ListStoreProductImagesEcommerceResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Add a new image to the product.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::CreateStoreProductImageEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :product_id
      #
      # @example
      #   client.ecommerce.create_store_product_image(
      #     store_id: "store_id",
      #     product_id: "product_id",
      #     id: "id",
      #     url: "url"
      #   )
      #
      # @return [Mailchimp::Ecommerce::Types::CreateStoreProductImageEcommerceResponse]
      def create_store_product_image(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::CreateStoreProductImageEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id product_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/products/#{URI.encode_uri_component(params[:product_id].to_s)}/images",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Ecommerce::Types::CreateStoreProductImageEcommerceResponse.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific product image.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :product_id
      # @option params [String] :image_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.ecommerce.get_store_product_image(
      #     store_id: "store_id",
      #     product_id: "product_id",
      #     image_id: "image_id"
      #   )
      #
      # @return [Mailchimp::Ecommerce::Types::GetStoreProductImageEcommerceResponse]
      def get_store_product_image(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/products/#{URI.encode_uri_component(params[:product_id].to_s)}/images/#{URI.encode_uri_component(params[:image_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Ecommerce::Types::GetStoreProductImageEcommerceResponse.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a product image.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :product_id
      # @option params [String] :image_id
      #
      # @example
      #   client.ecommerce.delete_store_product_image(
      #     store_id: "store_id",
      #     product_id: "product_id",
      #     image_id: "image_id"
      #   )
      #
      # @return [untyped]
      def delete_store_product_image(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/products/#{URI.encode_uri_component(params[:product_id].to_s)}/images/#{URI.encode_uri_component(params[:image_id].to_s)}",
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

      # Update a product image.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::UpdateStoreProductImageEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :product_id
      # @option params [String] :image_id
      #
      # @example
      #   client.ecommerce.update_store_product_image(
      #     store_id: "store_id",
      #     product_id: "product_id",
      #     image_id: "image_id"
      #   )
      #
      # @return [Mailchimp::Ecommerce::Types::UpdateStoreProductImageEcommerceResponse]
      def update_store_product_image(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::UpdateStoreProductImageEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id product_id image_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/products/#{URI.encode_uri_component(params[:product_id].to_s)}/images/#{URI.encode_uri_component(params[:image_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Ecommerce::Types::UpdateStoreProductImageEcommerceResponse.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a product's variants.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :product_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      #
      # @example
      #   client.ecommerce.list_store_product_variants(
      #     store_id: "store_id",
      #     product_id: "product_id"
      #   )
      #
      # @return [Mailchimp::Ecommerce::Types::ListStoreProductVariantsEcommerceResponse]
      def list_store_product_variants(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :variants,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/products/#{URI.encode_uri_component(params[:product_id].to_s)}/variants",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Ecommerce::Types::ListStoreProductVariantsEcommerceResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Add a new variant to the product.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::CreateStoreProductVariantEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :product_id
      #
      # @example
      #   client.ecommerce.create_store_product_variant(
      #     store_id: "store_id",
      #     product_id: "product_id",
      #     id: "id",
      #     title: "Cat Hat"
      #   )
      #
      # @return [Mailchimp::Types::ECommerceProductVariant]
      def create_store_product_variant(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::CreateStoreProductVariantEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id product_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/products/#{URI.encode_uri_component(params[:product_id].to_s)}/variants",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceProductVariant.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific product variant.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :product_id
      # @option params [String] :variant_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.ecommerce.get_store_product_variant(
      #     store_id: "store_id",
      #     product_id: "product_id",
      #     variant_id: "variant_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommerceProductVariant]
      def get_store_product_variant(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/products/#{URI.encode_uri_component(params[:product_id].to_s)}/variants/#{URI.encode_uri_component(params[:variant_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceProductVariant.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Add or update a product variant.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::UpsertStoreProductVariantEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :product_id
      # @option params [String] :variant_id
      #
      # @example
      #   client.ecommerce.upsert_store_product_variant(
      #     store_id: "store_id",
      #     product_id: "product_id",
      #     variant_id: "variant_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommerceProductVariant]
      def upsert_store_product_variant(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::UpsertStoreProductVariantEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id product_id variant_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/products/#{URI.encode_uri_component(params[:product_id].to_s)}/variants/#{URI.encode_uri_component(params[:variant_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceProductVariant.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a product variant.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :product_id
      # @option params [String] :variant_id
      #
      # @example
      #   client.ecommerce.delete_store_product_variant(
      #     store_id: "store_id",
      #     product_id: "product_id",
      #     variant_id: "variant_id"
      #   )
      #
      # @return [untyped]
      def delete_store_product_variant(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/products/#{URI.encode_uri_component(params[:product_id].to_s)}/variants/#{URI.encode_uri_component(params[:variant_id].to_s)}",
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

      # Update a product variant.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::UpdateStoreProductVariantEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :product_id
      # @option params [String] :variant_id
      #
      # @example
      #   client.ecommerce.update_store_product_variant(
      #     store_id: "store_id",
      #     product_id: "product_id",
      #     variant_id: "variant_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommerceProductVariant]
      def update_store_product_variant(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::UpdateStoreProductVariantEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id product_id variant_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/products/#{URI.encode_uri_component(params[:product_id].to_s)}/variants/#{URI.encode_uri_component(params[:variant_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommerceProductVariant.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a store's promo rules.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      #
      # @example
      #   client.ecommerce.list_store_promo_rules(store_id: "store_id")
      #
      # @return [Mailchimp::Ecommerce::Types::ListStorePromoRulesEcommerceResponse]
      def list_store_promo_rules(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :promo_rules,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/promo-rules",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Ecommerce::Types::ListStorePromoRulesEcommerceResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Add a new promo rule to a store.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::CreateStorePromoRuleEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      #
      # @example
      #   client.ecommerce.create_store_promo_rule(
      #     store_id: "store_id",
      #     amount: 1.1,
      #     description: "Save BIG during our summer sale!",
      #     id: "id",
      #     target: "per_item",
      #     type: "fixed"
      #   )
      #
      # @return [Mailchimp::Types::ECommercePromoRule]
      def create_store_promo_rule(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::CreateStorePromoRuleEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/promo-rules",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommercePromoRule.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific promo rule.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :promo_rule_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.ecommerce.get_store_promo_rule(
      #     store_id: "store_id",
      #     promo_rule_id: "promo_rule_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommercePromoRule]
      def get_store_promo_rule(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/promo-rules/#{URI.encode_uri_component(params[:promo_rule_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommercePromoRule.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a promo rule from a store.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :promo_rule_id
      #
      # @example
      #   client.ecommerce.delete_store_promo_rule(
      #     store_id: "store_id",
      #     promo_rule_id: "promo_rule_id"
      #   )
      #
      # @return [untyped]
      def delete_store_promo_rule(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/promo-rules/#{URI.encode_uri_component(params[:promo_rule_id].to_s)}",
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

      # Update a promo rule.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::UpdateStorePromoRuleEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :promo_rule_id
      #
      # @example
      #   client.ecommerce.update_store_promo_rule(
      #     store_id: "store_id",
      #     promo_rule_id: "promo_rule_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommercePromoRule]
      def update_store_promo_rule(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::UpdateStorePromoRuleEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id promo_rule_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/promo-rules/#{URI.encode_uri_component(params[:promo_rule_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommercePromoRule.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a store's promo codes.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :promo_rule_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      #
      # @example
      #   client.ecommerce.list_store_promo_rule_promo_codes(
      #     store_id: "store_id",
      #     promo_rule_id: "promo_rule_id"
      #   )
      #
      # @return [Mailchimp::Ecommerce::Types::ListStorePromoRulePromoCodesEcommerceResponse]
      def list_store_promo_rule_promo_codes(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :promo_codes,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/promo-rules/#{URI.encode_uri_component(params[:promo_rule_id].to_s)}/promo-codes",
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
            parsed_response = (response.body.to_s.empty? ? nil : Mailchimp::Ecommerce::Types::ListStorePromoRulePromoCodesEcommerceResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Add a new promo code to a store.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::CreateStorePromoRulePromoCodeEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :promo_rule_id
      #
      # @example
      #   client.ecommerce.create_store_promo_rule_promo_code(
      #     store_id: "store_id",
      #     promo_rule_id: "promo_rule_id",
      #     code: "summersale",
      #     id: "id",
      #     redemption_url: "A url that applies promo code directly at checkout or a url that points to sale page or store url"
      #   )
      #
      # @return [Mailchimp::Types::ECommercePromoCode]
      def create_store_promo_rule_promo_code(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::CreateStorePromoRulePromoCodeEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id promo_rule_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/promo-rules/#{URI.encode_uri_component(params[:promo_rule_id].to_s)}/promo-codes",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommercePromoCode.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific promo code.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :promo_rule_id
      # @option params [String] :promo_code_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.ecommerce.get_store_promo_rule_promo_code(
      #     store_id: "store_id",
      #     promo_rule_id: "promo_rule_id",
      #     promo_code_id: "promo_code_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommercePromoCode]
      def get_store_promo_rule_promo_code(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/promo-rules/#{URI.encode_uri_component(params[:promo_rule_id].to_s)}/promo-codes/#{URI.encode_uri_component(params[:promo_code_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommercePromoCode.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a promo code from a store.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :promo_rule_id
      # @option params [String] :promo_code_id
      #
      # @example
      #   client.ecommerce.delete_store_promo_rule_promo_code(
      #     store_id: "store_id",
      #     promo_rule_id: "promo_rule_id",
      #     promo_code_id: "promo_code_id"
      #   )
      #
      # @return [untyped]
      def delete_store_promo_rule_promo_code(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/promo-rules/#{URI.encode_uri_component(params[:promo_rule_id].to_s)}/promo-codes/#{URI.encode_uri_component(params[:promo_code_id].to_s)}",
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

      # Update a promo code.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Ecommerce::Types::UpdateStorePromoRulePromoCodeEcommerceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :store_id
      # @option params [String] :promo_rule_id
      # @option params [String] :promo_code_id
      #
      # @example
      #   client.ecommerce.update_store_promo_rule_promo_code(
      #     store_id: "store_id",
      #     promo_rule_id: "promo_rule_id",
      #     promo_code_id: "promo_code_id"
      #   )
      #
      # @return [Mailchimp::Types::ECommercePromoCode]
      def update_store_promo_rule_promo_code(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Ecommerce::Types::UpdateStorePromoRulePromoCodeEcommerceRequest.new(params).to_h
        non_body_param_names = %w[store_id promo_rule_id promo_code_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/ecommerce/stores/#{URI.encode_uri_component(params[:store_id].to_s)}/promo-rules/#{URI.encode_uri_component(params[:promo_rule_id].to_s)}/promo-codes/#{URI.encode_uri_component(params[:promo_code_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Mailchimp::Types::ECommercePromoCode.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
