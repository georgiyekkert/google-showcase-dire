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
        module ZoneOperations
          module Rest
            ##
            # REST service stub for the ZoneOperations service.
            #
            class ServiceStub
              ##
              # Create a new ZoneOperations REST service stub object.
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
              # Deletes the specified zone-specific Operations resource.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteZoneOperationRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::DeleteZoneOperationResponse]
              def delete request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::DeleteZoneOperationRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/operations/#{request_pb.operation}"

                result_json = @client_stub.make_delete_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::DeleteZoneOperationResponse.decode_json result_json[:body]
              end

              ##
              # Retrieves the specified zone-specific Operations resource.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetZoneOperationRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def get request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::GetZoneOperationRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/operations/#{request_pb.operation}"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body]
              end

              ##
              # Retrieves a list of Operation resources contained within the specified zone.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ListZoneOperationsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::OperationList]
              def list request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::ListZoneOperationsRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/operations"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::OperationList.decode_json result_json[:body]
              end

              ##
              # Waits for the specified Operation resource to return as `DONE` or for the request to approach the 2 minute deadline, and retrieves the specified Operation resource. This method differs from the `GET` method in that it waits for no more than the default deadline (2 minutes) and then returns the current state of the operation, which might be `DONE` or still in progress.
              #
              # This method is called on a best-effort basis. Specifically:
              # - In uncommon cases, when the server is overloaded, the request might return before the default deadline is reached, or might return after zero seconds.
              # - If the default deadline is reached, there is no guarantee that the operation is actually done when the method returns. Be prepared to retry if the operation is not `DONE`.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::WaitZoneOperationRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def wait request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::WaitZoneOperationRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/operations/#{request_pb.operation}/wait"

                result_json = @client_stub.make_post_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body]
              end
            end
          end
        end
      end
    end
  end
end
