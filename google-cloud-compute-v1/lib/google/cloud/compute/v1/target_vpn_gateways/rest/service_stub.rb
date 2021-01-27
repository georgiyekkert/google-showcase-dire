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
        module TargetVpnGateways
          module Rest
            ##
            # REST service stub for the TargetVpnGateways service.
            #
            class ServiceStub
              ##
              # Create a new TargetVpnGateways REST service stub object.
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
              # Retrieves an aggregated list of target VPN gateways.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::AggregatedListTargetVpnGatewaysRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::TargetVpnGatewayAggregatedList]
              def aggregated_list request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::AggregatedListTargetVpnGatewaysRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/aggregated/targetVpnGateways"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::TargetVpnGatewayAggregatedList.decode_json result_json[:body]
              end

              ##
              # Deletes the specified target VPN gateway.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteTargetVpnGatewayRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def delete request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::DeleteTargetVpnGatewayRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/regions/#{request_pb.region}/targetVpnGateways/#{request_pb.target_vpn_gateway}"

                result_json = @client_stub.make_delete_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body]
              end

              ##
              # Returns the specified target VPN gateway. Gets a list of available target VPN gateways by making a list() request.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetTargetVpnGatewayRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::TargetVpnGateway]
              def get request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::GetTargetVpnGatewayRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/regions/#{request_pb.region}/targetVpnGateways/#{request_pb.target_vpn_gateway}"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::TargetVpnGateway.decode_json result_json[:body]
              end

              ##
              # Creates a target VPN gateway in the specified project and region using the data included in the request.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::InsertTargetVpnGatewayRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def insert request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::InsertTargetVpnGatewayRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/regions/#{request_pb.region}/targetVpnGateways"
                body = request_pb.target_vpn_gateway_resource.to_json

                result_json = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body]
              end

              ##
              # Retrieves a list of target VPN gateways available to the specified project and region.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ListTargetVpnGatewaysRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::TargetVpnGatewayList]
              def list request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::ListTargetVpnGatewaysRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/regions/#{request_pb.region}/targetVpnGateways"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::TargetVpnGatewayList.decode_json result_json[:body]
              end
            end
          end
        end
      end
    end
  end
end