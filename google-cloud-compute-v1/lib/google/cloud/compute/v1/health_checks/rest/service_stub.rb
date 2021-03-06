# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "gapic/rest"
require "google/cloud/compute/v1/compute_small_pb"

module Google
  module Cloud
    module Compute
      module V1
        module HealthChecks
          module Rest
            ##
            # REST service stub for the HealthChecks service.
            #
            class ServiceStub
              ##
              # Create a new HealthChecks REST service stub object.
              #
              # @param endpoint [String]
              #   The hostname or hostname:port of the service endpoint.
              #   Defaults to `"localhost:7469"`.
              #
              # @param credentials [Google::Auth::Credentials]
              #   Credentials to send with calls in form of a googleauth credentials object.
              #   (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
              #
              def initialize endpoint:, credentials:
                @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint, credentials: credentials
              end

              # Service calls

              ##
              # Retrieves the list of all HealthCheck resources, regional and global, available to the specified project.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::AggregatedListHealthChecksRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::HealthChecksAggregatedList]
              def aggregated_list request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::AggregatedListHealthChecksRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/aggregated/healthChecks"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::HealthChecksAggregatedList.decode_json result_json[:body], { ignore_unknown_fields: true }
              end

              ##
              # Deletes the specified HealthCheck resource.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteHealthCheckRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def delete request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::DeleteHealthCheckRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/global/healthChecks/#{request_pb.health_check}"

                result_json = @client_stub.make_delete_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body], { ignore_unknown_fields: true }
              end

              ##
              # Returns the specified HealthCheck resource. Gets a list of available health checks by making a list() request.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetHealthCheckRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::HealthCheck]
              def get request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::GetHealthCheckRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/global/healthChecks/#{request_pb.health_check}"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::HealthCheck.decode_json result_json[:body], { ignore_unknown_fields: true }
              end

              ##
              # Creates a HealthCheck resource in the specified project using the data included in the request.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::InsertHealthCheckRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def insert request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::InsertHealthCheckRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/global/healthChecks"
                body = request_pb.health_check_resource.to_json

                result_json = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body], { ignore_unknown_fields: true }
              end

              ##
              # Retrieves the list of HealthCheck resources available to the specified project.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ListHealthChecksRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::HealthCheckList]
              def list request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::ListHealthChecksRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/global/healthChecks"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::HealthCheckList.decode_json result_json[:body], { ignore_unknown_fields: true }
              end

              ##
              # Updates a HealthCheck resource in the specified project using the data included in the request. This method supports PATCH semantics and uses the JSON merge patch format and processing rules.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::PatchHealthCheckRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def patch request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::PatchHealthCheckRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/global/healthChecks/#{request_pb.health_check}"
                body = request_pb.health_check_resource.to_json

                result_json = @client_stub.make_patch_request(
                  uri:     uri,
                  body:    body,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body], { ignore_unknown_fields: true }
              end

              ##
              # Updates a HealthCheck resource in the specified project using the data included in the request.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::UpdateHealthCheckRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def update request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::UpdateHealthCheckRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/global/healthChecks/#{request_pb.health_check}"
                body = request_pb.health_check_resource.to_json

                result_json = @client_stub.make_put_request(
                  uri:     uri,
                  body:    body,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body], { ignore_unknown_fields: true }
              end
            end
          end
        end
      end
    end
  end
end
