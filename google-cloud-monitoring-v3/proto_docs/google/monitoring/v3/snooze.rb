# frozen_string_literal: true

# Copyright 2023 Google LLC
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


module Google
  module Cloud
    module Monitoring
      module V3
        # A `Snooze` will prevent any alerts from being opened, and close any that
        # are already open. The `Snooze` will work on alerts that match the
        # criteria defined in the `Snooze`. The `Snooze` will be active from
        # `interval.start_time` through `interval.end_time`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the `Snooze`. The format is:
        #
        #         projects/[PROJECT_ID_OR_NUMBER]/snoozes/[SNOOZE_ID]
        #
        #     The ID of the `Snooze` will be generated by the system.
        # @!attribute [rw] criteria
        #   @return [::Google::Cloud::Monitoring::V3::Snooze::Criteria]
        #     Required. This defines the criteria for applying the `Snooze`. See
        #     `Criteria` for more information.
        # @!attribute [rw] interval
        #   @return [::Google::Cloud::Monitoring::V3::TimeInterval]
        #     Required. The `Snooze` will be active from `interval.start_time` through
        #     `interval.end_time`.
        #     `interval.start_time` cannot be in the past. There is a 15 second clock
        #     skew to account for the time it takes for a request to reach the API from
        #     the UI.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. A display name for the `Snooze`. This can be, at most, 512
        #     unicode characters.
        class Snooze
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Criteria specific to the `AlertPolicy`s that this `Snooze` applies to. The
          # `Snooze` will suppress alerts that come from one of the `AlertPolicy`s
          # whose names are supplied.
          # @!attribute [rw] policies
          #   @return [::Array<::String>]
          #     The specific `AlertPolicy` names for the alert that should be snoozed.
          #     The format is:
          #
          #         projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[POLICY_ID]
          #
          #     There is a limit of 10 policies per snooze. This limit is checked during
          #     snooze creation.
          class Criteria
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
