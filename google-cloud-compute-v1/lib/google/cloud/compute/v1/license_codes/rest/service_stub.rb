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
        module LicenseCodes
          module Rest
            ##
            # REST service stub for the LicenseCodes service.
            #
            class ServiceStub
              ##
              # Create a new LicenseCodes REST service stub object.
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
              # Return a specified license code. License codes are mirrored across all projects that have permissions to read the License Code.  Caution This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetLicenseCodeRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::LicenseCode]
              def get request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::GetLicenseCodeRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/global/licenseCodes/#{request_pb.license_code}"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::LicenseCode.decode_json result_json[:body]
              end

              ##
              # Returns permissions that a caller has on the specified resource.  Caution This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::TestIamPermissionsLicenseCodeRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::TestPermissionsResponse]
              def test_iam_permissions request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::TestIamPermissionsLicenseCodeRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/global/licenseCodes/#{request_pb.resource}/testIamPermissions"
                body = request_pb.test_permissions_request_resource.to_json

                result_json = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::TestPermissionsResponse.decode_json result_json[:body]
              end
            end
          end
        end
      end
    end
  end
end
