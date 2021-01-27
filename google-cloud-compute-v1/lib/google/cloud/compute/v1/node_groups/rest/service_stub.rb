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
        module NodeGroups
          module Rest
            ##
            # REST service stub for the NodeGroups service.
            #
            class ServiceStub
              ##
              # Create a new NodeGroups REST service stub object.
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
              # Adds specified number of nodes to the node group.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::AddNodesNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def add_nodes request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::AddNodesNodeGroupRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.node_group}/addNodes"
                body = request_pb.node_groups_add_nodes_request_resource.to_json

                result_json = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body]
              end

              ##
              # Retrieves an aggregated list of node groups. Note: use nodeGroups.listNodes for more details about each group.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::AggregatedListNodeGroupsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::NodeGroupAggregatedList]
              def aggregated_list request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::AggregatedListNodeGroupsRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/aggregated/nodeGroups"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::NodeGroupAggregatedList.decode_json result_json[:body]
              end

              ##
              # Deletes the specified NodeGroup resource.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def delete request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::DeleteNodeGroupRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.node_group}"

                result_json = @client_stub.make_delete_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body]
              end

              ##
              # Deletes specified nodes from the node group.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteNodesNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def delete_nodes request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::DeleteNodesNodeGroupRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.node_group}/deleteNodes"
                body = request_pb.node_groups_delete_nodes_request_resource.to_json

                result_json = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body]
              end

              ##
              # Returns the specified NodeGroup. Get a list of available NodeGroups by making a list() request. Note: the "nodes" field should not be used. Use nodeGroups.listNodes instead.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::NodeGroup]
              def get request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::GetNodeGroupRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.node_group}"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::NodeGroup.decode_json result_json[:body]
              end

              ##
              # Gets the access control policy for a resource. May be empty if no such policy or resource exists.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetIamPolicyNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Policy]
              def get_iam_policy request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::GetIamPolicyNodeGroupRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.resource}/getIamPolicy"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Policy.decode_json result_json[:body]
              end

              ##
              # Creates a NodeGroup resource in the specified project using the data included in the request.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::InsertNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def insert request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::InsertNodeGroupRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups"
                body = request_pb.node_group_resource.to_json

                result_json = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::Operation.decode_json result_json[:body]
              end

              ##
              # Retrieves a list of node groups available to the specified project. Note: use nodeGroups.listNodes for more details about each group.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ListNodeGroupsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::NodeGroupList]
              def list request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::ListNodeGroupsRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups"

                result_json = @client_stub.make_get_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::NodeGroupList.decode_json result_json[:body]
              end

              ##
              # Lists nodes in the node group.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ListNodesNodeGroupsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::NodeGroupsListNodes]
              def list_nodes request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::ListNodesNodeGroupsRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.node_group}/listNodes"

                result_json = @client_stub.make_post_request(
                  uri:     uri,
                  options: options,
                  &block
                )

                ::Google::Cloud::Compute::V1::NodeGroupsListNodes.decode_json result_json[:body]
              end

              ##
              # Updates the specified node group.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::PatchNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def patch request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::PatchNodeGroupRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.node_group}"
                body = request_pb.node_group_resource.to_json

                result_json = @client_stub.make_patch_request(
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
              # @param request_pb [::Google::Cloud::Compute::V1::SetIamPolicyNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Policy]
              def set_iam_policy request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::SetIamPolicyNodeGroupRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.resource}/setIamPolicy"
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
              # Updates the node template of the node group.
              #
              # @param request_pb [::Google::Cloud::Compute::V1::SetNodeTemplateNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::Operation]
              def set_node_template request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::SetNodeTemplateNodeGroupRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.node_group}/setNodeTemplate"
                body = request_pb.node_groups_set_node_template_request_resource.to_json

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
              # @param request_pb [::Google::Cloud::Compute::V1::TestIamPermissionsNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              # @return [::Google::Cloud::Compute::V1::TestPermissionsResponse]
              def test_iam_permissions request_pb, options:, &block
                request_json = JSON.parse ::Google::Cloud::Compute::V1::TestIamPermissionsNodeGroupRequest.encode_json(request_pb)

                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.resource}/testIamPermissions"
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