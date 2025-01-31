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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/shell/v1/version"

require "google/cloud/shell/v1/cloud_shell_service/credentials"
require "google/cloud/shell/v1/cloud_shell_service/paths"
require "google/cloud/shell/v1/cloud_shell_service/operations"
require "google/cloud/shell/v1/cloud_shell_service/client"

module Google
  module Cloud
    module Shell
      module V1
        ##
        # API for interacting with Google Cloud Shell. Each user of Cloud Shell has at
        # least one environment, which has the ID "default". Environment consists of a
        # Docker image defining what is installed on the environment and a home
        # directory containing the user's data that will remain across sessions.
        # Clients use this API to start and fetch information about their environment,
        # which can then be used to connect to that environment via a separate SSH
        # client.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/shell/v1/cloud_shell_service"
        #     client = ::Google::Cloud::Shell::V1::CloudShellService::Client.new
        #
        module CloudShellService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "cloud_shell_service", "helpers.rb"
require "google/cloud/shell/v1/cloud_shell_service/helpers" if ::File.file? helper_path
