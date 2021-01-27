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
        module Disks
          module Rest
            ##
            # REST service stub for the Disks service.
            #
            class ServiceStub
              ##
              # Create a new Disks REST service stub object.
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
              # Adds existing resource policies to a disk. You can only add one policy which will be applied to this disk for scheduling snapshot creation.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::AddResourcePoliciesDiskRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def add_resource_policies request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::AddResourcePoliciesDiskRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/disks/#{request_pb.disk}/addResourcePolicies"
                body = request_pb.disks_add_resource_policies_request_resource.to_json

                result_json = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body]
              end

              ##
              # Retrieves an aggregated list of persistent disks.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::AggregatedListDisksRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::DiskAggregatedList]
              def aggregated_list request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::AggregatedListDisksRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/aggregated/disks"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::DiskAggregatedList.decode_json result_json[:body]
              end

              ##
              # Creates a snapshot of a specified persistent disk.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::CreateSnapshotDiskRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def create_snapshot request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::CreateSnapshotDiskRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/disks/#{request_pb.disk}/createSnapshot"
                body = request_pb.snapshot_resource.to_json

                result_json = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body]
              end

              ##
              # Deletes the specified persistent disk. Deleting a disk removes its data permanently and is irreversible. However, deleting a disk does not delete any snapshots previously made from the disk. You must separately delete snapshots.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteDiskRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def delete request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::DeleteDiskRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/disks/#{request_pb.disk}"

                result_json = @client_stub.make_delete_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body]
              end

              ##
              # Returns a specified persistent disk. Gets a list of available persistent disks by making a list() request.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetDiskRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Disk]
              def get request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::GetDiskRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/disks/#{request_pb.disk}"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Disk.decode_json result_json[:body]
              end

              ##
              # Gets the access control policy for a resource. May be empty if no such policy or resource exists.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetIamPolicyDiskRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Policy]
              def get_iam_policy request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::GetIamPolicyDiskRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/disks/#{request_pb.resource}/getIamPolicy"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Policy.decode_json result_json[:body]
              end

              ##
              # Creates a persistent disk in the specified project using the data in the request. You can create a disk from a source (sourceImage, sourceSnapshot, or sourceDisk) or create an empty 500 GB data disk by omitting all properties. You can also create a disk that is larger than the default size by specifying the sizeGb property.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::InsertDiskRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def insert request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::InsertDiskRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/disks"
                body = request_pb.disk_resource.to_json

                result_json = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body]
              end

              ##
              # Retrieves a list of persistent disks contained within the specified zone.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ListDisksRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::DiskList]
              def list request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::ListDisksRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/disks"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::DiskList.decode_json result_json[:body]
              end

              ##
              # Removes resource policies from a disk.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::RemoveResourcePoliciesDiskRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def remove_resource_policies request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::RemoveResourcePoliciesDiskRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/disks/#{request_pb.disk}/removeResourcePolicies"
                body = request_pb.disks_remove_resource_policies_request_resource.to_json

                result_json = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body]
              end

              ##
              # Resizes the specified persistent disk. You can only increase the size of the disk.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ResizeDiskRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def resize request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::ResizeDiskRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/disks/#{request_pb.disk}/resize"
                body = request_pb.disks_resize_request_resource.to_json

                result_json = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body]
              end

              ##
              # Sets the access control policy on the specified resource. Replaces any existing policy.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::SetIamPolicyDiskRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Policy]
              def set_iam_policy request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::SetIamPolicyDiskRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/disks/#{request_pb.resource}/setIamPolicy"
                body = request_pb.zone_set_policy_request_resource.to_json

                result_json = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Policy.decode_json result_json[:body]
              end

              ##
              # Sets the labels on a disk. To learn more about labels, read the Labeling Resources documentation.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::SetLabelsDiskRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def set_labels request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::SetLabelsDiskRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/disks/#{request_pb.resource}/setLabels"
                body = request_pb.zone_set_labels_request_resource.to_json

                result_json = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body]
              end

              ##
              # Returns permissions that a caller has on the specified resource.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::TestIamPermissionsDiskRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::TestPermissionsResponse]
              def test_iam_permissions request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::TestIamPermissionsDiskRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/disks/#{request_pb.resource}/testIamPermissions"
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