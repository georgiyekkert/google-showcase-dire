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


module Google
  module Showcase
    module V1beta1
      # @!attribute [r] name
      #   @return [::String]
      # @!attribute [rw] responses
      #   @return [::Array<::Google::Showcase::V1beta1::Sequence::Response>]
      #     Sequence of responses to return in order for each attempt. If empty, the
      #     default response is an immediate OK.
      class Sequence
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods

        # A server response to an RPC Attempt in a sequence.
        # @!attribute [rw] status
        #   @return [::Google::Rpc::Status]
        #     The status to return for an individual attempt.
        # @!attribute [rw] delay
        #   @return [::Google::Protobuf::Duration]
        #     The amount of time to delay sending the response.
        class Response
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end

      # @!attribute [r] name
      #   @return [::String]
      # @!attribute [rw] attempts
      #   @return [::Array<::Google::Showcase::V1beta1::SequenceReport::Attempt>]
      #     The set of RPC attempts received by the server for a Sequence.
      class SequenceReport
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods

        # Contains metrics on individual RPC Attempts in a sequence.
        # @!attribute [rw] attempt_number
        #   @return [::Integer]
        #     The attempt number - starting at 0.
        # @!attribute [rw] attempt_deadline
        #   @return [::Google::Protobuf::Timestamp]
        #     The deadline dictated by the attempt to the server.
        # @!attribute [rw] response_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time that the server responded to the RPC attempt. Used for
        #     calculating attempt_delay.
        # @!attribute [rw] attempt_delay
        #   @return [::Google::Protobuf::Duration]
        #     The server perceived delay between sending the last response and
        #     receiving this attempt. Used for validating attempt delay backoff.
        # @!attribute [rw] status
        #   @return [::Google::Rpc::Status]
        #     The status returned to the attempt.
        class Attempt
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end

      # @!attribute [rw] sequence
      #   @return [::Google::Showcase::V1beta1::Sequence]
      class CreateSequenceRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # @!attribute [rw] name
      #   @return [::String]
      class AttemptSequenceRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # @!attribute [rw] name
      #   @return [::String]
      class GetSequenceReportRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end
    end
  end
end
