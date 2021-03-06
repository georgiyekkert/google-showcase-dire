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
        module Interconnects
          module Rest
            ##
            # REST service stub for the Interconnects service.
            #
            class ServiceStub
              ##
              # Create a new Interconnects REST service stub object.
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
              # Deletes the specified interconnect.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteInterconnectRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def delete request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::DeleteInterconnectRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/global/interconnects/#{request_pb.interconnect}"

                result_json = @client_stub.make_delete_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body], { ignore_unknown_fields: true }
              end

              ##
              # Returns the specified interconnect. Get a list of available interconnects by making a list() request.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetInterconnectRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Interconnect]
              def get request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::GetInterconnectRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/global/interconnects/#{request_pb.interconnect}"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Interconnect.decode_json result_json[:body], { ignore_unknown_fields: true }
              end

              ##
              # Returns the interconnectDiagnostics for the specified interconnect.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetDiagnosticsInterconnectRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::InterconnectsGetDiagnosticsResponse]
              def get_diagnostics request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::GetDiagnosticsInterconnectRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/global/interconnects/#{request_pb.interconnect}/getDiagnostics"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::InterconnectsGetDiagnosticsResponse.decode_json result_json[:body], { ignore_unknown_fields: true }
              end

              ##
              # Creates a Interconnect in the specified project using the data included in the request.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::InsertInterconnectRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def insert request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::InsertInterconnectRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/global/interconnects"
                body = request_pb.interconnect_resource.to_json

                result_json = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body], { ignore_unknown_fields: true }
              end

              ##
              # Retrieves the list of interconnect available to the specified project.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ListInterconnectsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::InterconnectList]
              def list request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::ListInterconnectsRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/global/interconnects"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::InterconnectList.decode_json result_json[:body], { ignore_unknown_fields: true }
              end

              ##
              # Updates the specified interconnect with the data included in the request. This method supports PATCH semantics and uses the JSON merge patch format and processing rules.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::PatchInterconnectRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def patch request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::PatchInterconnectRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/global/interconnects/#{request_pb.interconnect}"
                body = request_pb.interconnect_resource.to_json

                result_json = @client_stub.make_patch_request(
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
