# frozen_string_literal: true

# The MIT License (MIT)
#
# Copyright <YEAR> <COPYRIGHT HOLDER>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "schema/google/showcase/v1beta1/identity_pb"

module Google
  module Showcase
    module V1beta1
      module Identity
        ##
        # Client for the Identity service.
        #
        # A simple identity service.
        #
        class Client
          include Paths

          # @private
          attr_reader :identity_stub

          ##
          # Configure the Identity Client class.
          #
          # See {::Google::Showcase::V1beta1::Identity::Client::Configuration}
          # for a description of the configuration fields.
          #
          # ## Example
          #
          # To modify the configuration for all Identity clients:
          #
          #     ::Google::Showcase::V1beta1::Identity::Client.configure do |config|
          #       config.timeout = 10.0
          #     end
          #
          # @yield [config] Configure the Client client.
          # @yieldparam config [Client::Configuration]
          #
          # @return [Client::Configuration]
          #
          def self.configure
            @configure ||= begin
              default_config = Client::Configuration.new

              default_config.rpcs.get_user.timeout = 5.0
              default_config.rpcs.get_user.retry_policy = {
                initial_delay: 0.2,
                max_delay:     3.0,
                multiplier:    2,
                retry_codes:   [14, 2]
              }

              default_config.rpcs.list_users.timeout = 5.0
              default_config.rpcs.list_users.retry_policy = {
                initial_delay: 0.2,
                max_delay:     3.0,
                multiplier:    2,
                retry_codes:   [14, 2]
              }

              default_config
            end
            yield @configure if block_given?
            @configure
          end

          ##
          # Configure the Identity Client instance.
          #
          # The configuration is set to the derived mode, meaning that values can be changed,
          # but structural changes (adding new fields, etc.) are not allowed. Structural changes
          # should be made on {Client.configure}.
          #
          # See {::Google::Showcase::V1beta1::Identity::Client::Configuration}
          # for a description of the configuration fields.
          #
          # @yield [config] Configure the Client client.
          # @yieldparam config [Client::Configuration]
          #
          # @return [Client::Configuration]
          #
          def configure
            yield @config if block_given?
            @config
          end

          ##
          # Create a new Identity client object.
          #
          # ## Examples
          #
          # To create a new Identity client with the default
          # configuration:
          #
          #     client = ::Google::Showcase::V1beta1::Identity::Client.new
          #
          # To create a new Identity client with a custom
          # configuration:
          #
          #     client = ::Google::Showcase::V1beta1::Identity::Client.new do |config|
          #       config.timeout = 10.0
          #     end
          #
          # @yield [config] Configure the Identity client.
          # @yieldparam config [Client::Configuration]
          #
          def initialize
            # These require statements are intentionally placed here to initialize
            # the gRPC module only when it's required.
            # See https://github.com/googleapis/toolkit/issues/446
            require "gapic/grpc"
            require "schema/google/showcase/v1beta1/identity_services_pb"

            # Create the configuration object
            @config = Configuration.new Client.configure

            # Yield the configuration if needed
            yield @config if block_given?

            # Create credentials
            credentials = @config.credentials
            credentials ||= Credentials.default scope: @config.scope
            if credentials.is_a?(String) || credentials.is_a?(Hash)
              credentials = Credentials.new credentials, scope: @config.scope
            end
            @quota_project_id = @config.quota_project
            @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

            @identity_stub = ::Gapic::ServiceStub.new(
              ::Google::Showcase::V1beta1::Identity::Stub,
              credentials:  credentials,
              endpoint:     @config.endpoint,
              channel_args: @config.channel_args,
              interceptors: @config.interceptors
            )
          end

          # Service calls

          ##
          # Creates a user.
          #
          # @overload create_user(request, options = nil)
          #   Pass arguments to `create_user` via a request object, either of type
          #   {::Google::Showcase::V1beta1::CreateUserRequest} or an equivalent Hash.
          #
          #   @param request [::Google::Showcase::V1beta1::CreateUserRequest, ::Hash]
          #     A request object representing the call parameters. Required. To specify no
          #     parameters, or to keep all the default parameter values, pass an empty Hash.
          #   @param options [::Gapic::CallOptions, ::Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
          #
          # @overload create_user(user: nil)
          #   Pass arguments to `create_user` via keyword arguments. Note that at
          #   least one keyword argument is required. To specify no parameters, or to keep all
          #   the default parameter values, pass an empty Hash as a request object (see above).
          #
          #   @param user [::Google::Showcase::V1beta1::User, ::Hash]
          #     The user to create.
          #
          # @yield [response, operation] Access the result along with the RPC operation
          # @yieldparam response [::Google::Showcase::V1beta1::User]
          # @yieldparam operation [::GRPC::ActiveCall::Operation]
          #
          # @return [::Google::Showcase::V1beta1::User]
          #
          # @raise [::GRPC::BadStatus] if the RPC is aborted.
          #
          def create_user request, options = nil
            raise ::ArgumentError, "request must be provided" if request.nil?

            request = ::Gapic::Protobuf.coerce request, to: ::Google::Showcase::V1beta1::CreateUserRequest

            # Converts hash and nil to an options object
            options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

            # Customize the options with defaults
            metadata = @config.rpcs.create_user.metadata.to_h

            # Set x-goog-api-client and x-goog-user-project headers
            metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
              lib_name: @config.lib_name, lib_version: @config.lib_version,
              gapic_version: ::Google::Showcase::V1beta1::VERSION
            metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

            options.apply_defaults timeout:      @config.rpcs.create_user.timeout,
                                   metadata:     metadata,
                                   retry_policy: @config.rpcs.create_user.retry_policy
            options.apply_defaults metadata:     @config.metadata,
                                   retry_policy: @config.retry_policy

            @identity_stub.call_rpc :create_user, request, options: options do |response, operation|
              yield response, operation if block_given?
              return response
            end
          end

          ##
          # Retrieves the User with the given uri.
          #
          # @overload get_user(request, options = nil)
          #   Pass arguments to `get_user` via a request object, either of type
          #   {::Google::Showcase::V1beta1::GetUserRequest} or an equivalent Hash.
          #
          #   @param request [::Google::Showcase::V1beta1::GetUserRequest, ::Hash]
          #     A request object representing the call parameters. Required. To specify no
          #     parameters, or to keep all the default parameter values, pass an empty Hash.
          #   @param options [::Gapic::CallOptions, ::Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
          #
          # @overload get_user(name: nil)
          #   Pass arguments to `get_user` via keyword arguments. Note that at
          #   least one keyword argument is required. To specify no parameters, or to keep all
          #   the default parameter values, pass an empty Hash as a request object (see above).
          #
          #   @param name [::String]
          #     The resource name of the requested user.
          #
          # @yield [response, operation] Access the result along with the RPC operation
          # @yieldparam response [::Google::Showcase::V1beta1::User]
          # @yieldparam operation [::GRPC::ActiveCall::Operation]
          #
          # @return [::Google::Showcase::V1beta1::User]
          #
          # @raise [::GRPC::BadStatus] if the RPC is aborted.
          #
          def get_user request, options = nil
            raise ::ArgumentError, "request must be provided" if request.nil?

            request = ::Gapic::Protobuf.coerce request, to: ::Google::Showcase::V1beta1::GetUserRequest

            # Converts hash and nil to an options object
            options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

            # Customize the options with defaults
            metadata = @config.rpcs.get_user.metadata.to_h

            # Set x-goog-api-client and x-goog-user-project headers
            metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
              lib_name: @config.lib_name, lib_version: @config.lib_version,
              gapic_version: ::Google::Showcase::V1beta1::VERSION
            metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

            header_params = {
              "name" => request.name
            }
            request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
            metadata[:"x-goog-request-params"] ||= request_params_header

            options.apply_defaults timeout:      @config.rpcs.get_user.timeout,
                                   metadata:     metadata,
                                   retry_policy: @config.rpcs.get_user.retry_policy
            options.apply_defaults metadata:     @config.metadata,
                                   retry_policy: @config.retry_policy

            @identity_stub.call_rpc :get_user, request, options: options do |response, operation|
              yield response, operation if block_given?
              return response
            end
          end

          ##
          # Updates a user.
          #
          # @overload update_user(request, options = nil)
          #   Pass arguments to `update_user` via a request object, either of type
          #   {::Google::Showcase::V1beta1::UpdateUserRequest} or an equivalent Hash.
          #
          #   @param request [::Google::Showcase::V1beta1::UpdateUserRequest, ::Hash]
          #     A request object representing the call parameters. Required. To specify no
          #     parameters, or to keep all the default parameter values, pass an empty Hash.
          #   @param options [::Gapic::CallOptions, ::Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
          #
          # @overload update_user(user: nil, update_mask: nil)
          #   Pass arguments to `update_user` via keyword arguments. Note that at
          #   least one keyword argument is required. To specify no parameters, or to keep all
          #   the default parameter values, pass an empty Hash as a request object (see above).
          #
          #   @param user [::Google::Showcase::V1beta1::User, ::Hash]
          #     The user to update.
          #   @param update_mask [::Google::Protobuf::FieldMask, ::Hash]
          #     The field mask to determine wich fields are to be updated. If empty, the
          #     server will assume all fields are to be updated.
          #
          # @yield [response, operation] Access the result along with the RPC operation
          # @yieldparam response [::Google::Showcase::V1beta1::User]
          # @yieldparam operation [::GRPC::ActiveCall::Operation]
          #
          # @return [::Google::Showcase::V1beta1::User]
          #
          # @raise [::GRPC::BadStatus] if the RPC is aborted.
          #
          def update_user request, options = nil
            raise ::ArgumentError, "request must be provided" if request.nil?

            request = ::Gapic::Protobuf.coerce request, to: ::Google::Showcase::V1beta1::UpdateUserRequest

            # Converts hash and nil to an options object
            options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

            # Customize the options with defaults
            metadata = @config.rpcs.update_user.metadata.to_h

            # Set x-goog-api-client and x-goog-user-project headers
            metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
              lib_name: @config.lib_name, lib_version: @config.lib_version,
              gapic_version: ::Google::Showcase::V1beta1::VERSION
            metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

            header_params = {
              "user.name" => request.user.name
            }
            request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
            metadata[:"x-goog-request-params"] ||= request_params_header

            options.apply_defaults timeout:      @config.rpcs.update_user.timeout,
                                   metadata:     metadata,
                                   retry_policy: @config.rpcs.update_user.retry_policy
            options.apply_defaults metadata:     @config.metadata,
                                   retry_policy: @config.retry_policy

            @identity_stub.call_rpc :update_user, request, options: options do |response, operation|
              yield response, operation if block_given?
              return response
            end
          end

          ##
          # Deletes a user, their profile, and all of their authored messages.
          #
          # @overload delete_user(request, options = nil)
          #   Pass arguments to `delete_user` via a request object, either of type
          #   {::Google::Showcase::V1beta1::DeleteUserRequest} or an equivalent Hash.
          #
          #   @param request [::Google::Showcase::V1beta1::DeleteUserRequest, ::Hash]
          #     A request object representing the call parameters. Required. To specify no
          #     parameters, or to keep all the default parameter values, pass an empty Hash.
          #   @param options [::Gapic::CallOptions, ::Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
          #
          # @overload delete_user(name: nil)
          #   Pass arguments to `delete_user` via keyword arguments. Note that at
          #   least one keyword argument is required. To specify no parameters, or to keep all
          #   the default parameter values, pass an empty Hash as a request object (see above).
          #
          #   @param name [::String]
          #     The resource name of the user to delete.
          #
          # @yield [response, operation] Access the result along with the RPC operation
          # @yieldparam response [::Google::Protobuf::Empty]
          # @yieldparam operation [::GRPC::ActiveCall::Operation]
          #
          # @return [::Google::Protobuf::Empty]
          #
          # @raise [::GRPC::BadStatus] if the RPC is aborted.
          #
          def delete_user request, options = nil
            raise ::ArgumentError, "request must be provided" if request.nil?

            request = ::Gapic::Protobuf.coerce request, to: ::Google::Showcase::V1beta1::DeleteUserRequest

            # Converts hash and nil to an options object
            options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

            # Customize the options with defaults
            metadata = @config.rpcs.delete_user.metadata.to_h

            # Set x-goog-api-client and x-goog-user-project headers
            metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
              lib_name: @config.lib_name, lib_version: @config.lib_version,
              gapic_version: ::Google::Showcase::V1beta1::VERSION
            metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

            header_params = {
              "name" => request.name
            }
            request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
            metadata[:"x-goog-request-params"] ||= request_params_header

            options.apply_defaults timeout:      @config.rpcs.delete_user.timeout,
                                   metadata:     metadata,
                                   retry_policy: @config.rpcs.delete_user.retry_policy
            options.apply_defaults metadata:     @config.metadata,
                                   retry_policy: @config.retry_policy

            @identity_stub.call_rpc :delete_user, request, options: options do |response, operation|
              yield response, operation if block_given?
              return response
            end
          end

          ##
          # Lists all users.
          #
          # @overload list_users(request, options = nil)
          #   Pass arguments to `list_users` via a request object, either of type
          #   {::Google::Showcase::V1beta1::ListUsersRequest} or an equivalent Hash.
          #
          #   @param request [::Google::Showcase::V1beta1::ListUsersRequest, ::Hash]
          #     A request object representing the call parameters. Required. To specify no
          #     parameters, or to keep all the default parameter values, pass an empty Hash.
          #   @param options [::Gapic::CallOptions, ::Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
          #
          # @overload list_users(page_size: nil, page_token: nil)
          #   Pass arguments to `list_users` via keyword arguments. Note that at
          #   least one keyword argument is required. To specify no parameters, or to keep all
          #   the default parameter values, pass an empty Hash as a request object (see above).
          #
          #   @param page_size [::Integer]
          #     The maximum number of users to return. Server may return fewer users
          #     than requested. If unspecified, server will pick an appropriate default.
          #   @param page_token [::String]
          #     The value of google.showcase.v1beta1.ListUsersResponse.next_page_token
          #     returned from the previous call to
          #     `google.showcase.v1beta1.Identity\ListUsers` method.
          #
          # @yield [response, operation] Access the result along with the RPC operation
          # @yieldparam response [::Gapic::PagedEnumerable<::Google::Showcase::V1beta1::User>]
          # @yieldparam operation [::GRPC::ActiveCall::Operation]
          #
          # @return [::Gapic::PagedEnumerable<::Google::Showcase::V1beta1::User>]
          #
          # @raise [::GRPC::BadStatus] if the RPC is aborted.
          #
          def list_users request, options = nil
            raise ::ArgumentError, "request must be provided" if request.nil?

            request = ::Gapic::Protobuf.coerce request, to: ::Google::Showcase::V1beta1::ListUsersRequest

            # Converts hash and nil to an options object
            options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

            # Customize the options with defaults
            metadata = @config.rpcs.list_users.metadata.to_h

            # Set x-goog-api-client and x-goog-user-project headers
            metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
              lib_name: @config.lib_name, lib_version: @config.lib_version,
              gapic_version: ::Google::Showcase::V1beta1::VERSION
            metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

            options.apply_defaults timeout:      @config.rpcs.list_users.timeout,
                                   metadata:     metadata,
                                   retry_policy: @config.rpcs.list_users.retry_policy
            options.apply_defaults metadata:     @config.metadata,
                                   retry_policy: @config.retry_policy

            @identity_stub.call_rpc :list_users, request, options: options do |response, operation|
              response = ::Gapic::PagedEnumerable.new @identity_stub, :list_users, request, response, operation, options
              yield response, operation if block_given?
              return response
            end
          end

          ##
          # Configuration class for the Identity API.
          #
          # This class represents the configuration for Identity,
          # providing control over timeouts, retry behavior, logging, transport
          # parameters, and other low-level controls. Certain parameters can also be
          # applied individually to specific RPCs. See
          # {::Google::Showcase::V1beta1::Identity::Client::Configuration::Rpcs}
          # for a list of RPCs that can be configured independently.
          #
          # Configuration can be applied globally to all clients, or to a single client
          # on construction.
          #
          # # Examples
          #
          # To modify the global config, setting the timeout for create_user
          # to 20 seconds, and all remaining timeouts to 10 seconds:
          #
          #     ::Google::Showcase::V1beta1::Identity::Client.configure do |config|
          #       config.timeout = 10.0
          #       config.rpcs.create_user.timeout = 20.0
          #     end
          #
          # To apply the above configuration only to a new client:
          #
          #     client = ::Google::Showcase::V1beta1::Identity::Client.new do |config|
          #       config.timeout = 10.0
          #       config.rpcs.create_user.timeout = 20.0
          #     end
          #
          # @!attribute [rw] endpoint
          #   The hostname or hostname:port of the service endpoint.
          #   Defaults to `"localhost:7469"`.
          #   @return [::String]
          # @!attribute [rw] credentials
          #   Credentials to send with calls. You may provide any of the following types:
          #    *  (`String`) The path to a service account key file in JSON format
          #    *  (`Hash`) A service account key as a Hash
          #    *  (`Google::Auth::Credentials`) A googleauth credentials object
          #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
          #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
          #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
          #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
          #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
          #    *  (`nil`) indicating no credentials
          #   @return [::Object]
          # @!attribute [rw] scope
          #   The OAuth scopes
          #   @return [::Array<::String>]
          # @!attribute [rw] lib_name
          #   The library name as recorded in instrumentation and logging
          #   @return [::String]
          # @!attribute [rw] lib_version
          #   The library version as recorded in instrumentation and logging
          #   @return [::String]
          # @!attribute [rw] channel_args
          #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
          #   `GRPC::Core::Channel` object is provided as the credential.
          #   @return [::Hash]
          # @!attribute [rw] interceptors
          #   An array of interceptors that are run before calls are executed.
          #   @return [::Array<::GRPC::ClientInterceptor>]
          # @!attribute [rw] timeout
          #   The call timeout in seconds.
          #   @return [::Numeric]
          # @!attribute [rw] metadata
          #   Additional gRPC headers to be sent with the call.
          #   @return [::Hash{::Symbol=>::String}]
          # @!attribute [rw] retry_policy
          #   The retry policy. The value is a hash with the following keys:
          #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
          #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
          #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
          #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
          #       trigger a retry.
          #   @return [::Hash]
          # @!attribute [rw] quota_project
          #   A separate project against which to charge quota.
          #   @return [::String]
          #
          class Configuration
            extend ::Gapic::Config

            config_attr :endpoint,      "localhost:7469", ::String
            config_attr :credentials,   nil do |value|
              allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
              allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
              allowed.any? { |klass| klass === value }
            end
            config_attr :scope,         nil, ::String, ::Array, nil
            config_attr :lib_name,      nil, ::String, nil
            config_attr :lib_version,   nil, ::String, nil
            config_attr(:channel_args,  { "grpc.service_config_disable_resolution"=>1 }, ::Hash, nil)
            config_attr :interceptors,  nil, ::Array, nil
            config_attr :timeout,       nil, ::Numeric, nil
            config_attr :metadata,      nil, ::Hash, nil
            config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
            config_attr :quota_project, nil, ::String, nil

            # @private
            def initialize parent_config = nil
              @parent_config = parent_config unless parent_config.nil?

              yield self if block_given?
            end

            ##
            # Configurations for individual RPCs
            # @return [Rpcs]
            #
            def rpcs
              @rpcs ||= begin
                parent_rpcs = nil
                parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config&.respond_to?(:rpcs)
                Rpcs.new parent_rpcs
              end
            end

            ##
            # Configuration RPC class for the Identity API.
            #
            # Includes fields providing the configuration for each RPC in this service.
            # Each configuration object is of type `Gapic::Config::Method` and includes
            # the following configuration fields:
            #
            #  *  `timeout` (*type:* `Numeric`) - The call timeout in milliseconds
            #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
            #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
            #     include the following keys:
            #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #         trigger a retry.
            #
            class Rpcs
              ##
              # RPC-specific configuration for `create_user`
              # @return [::Gapic::Config::Method]
              #
              attr_reader :create_user
              ##
              # RPC-specific configuration for `get_user`
              # @return [::Gapic::Config::Method]
              #
              attr_reader :get_user
              ##
              # RPC-specific configuration for `update_user`
              # @return [::Gapic::Config::Method]
              #
              attr_reader :update_user
              ##
              # RPC-specific configuration for `delete_user`
              # @return [::Gapic::Config::Method]
              #
              attr_reader :delete_user
              ##
              # RPC-specific configuration for `list_users`
              # @return [::Gapic::Config::Method]
              #
              attr_reader :list_users

              # @private
              def initialize parent_rpcs = nil
                create_user_config = parent_rpcs&.create_user if parent_rpcs&.respond_to? :create_user
                @create_user = ::Gapic::Config::Method.new create_user_config
                get_user_config = parent_rpcs&.get_user if parent_rpcs&.respond_to? :get_user
                @get_user = ::Gapic::Config::Method.new get_user_config
                update_user_config = parent_rpcs&.update_user if parent_rpcs&.respond_to? :update_user
                @update_user = ::Gapic::Config::Method.new update_user_config
                delete_user_config = parent_rpcs&.delete_user if parent_rpcs&.respond_to? :delete_user
                @delete_user = ::Gapic::Config::Method.new delete_user_config
                list_users_config = parent_rpcs&.list_users if parent_rpcs&.respond_to? :list_users
                @list_users = ::Gapic::Config::Method.new list_users_config

                yield self if block_given?
              end
            end
          end
        end
      end
    end
  end
end