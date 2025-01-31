# frozen_string_literal: true

# Copyright 2022 Google LLC
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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/iam/client/version"

require "googleauth"

module Google
  module Iam
    ##
    # Create a new client object for Policies.
    #
    # By default, this returns an instance of
    # [Google::Iam::V2::Policies::Client](https://googleapis.dev/ruby/google-iam-v2/latest/Google/Iam/V2/Policies/Client.html)
    # for a gRPC client for version V2 of the API.
    # However, you can specify a different API version by passing it in the
    # `version` parameter. If the Policies service is
    # supported by that API version, and the corresponding gem is available, the
    # appropriate versioned client will be returned.
    #
    # ## About Policies
    #
    # An interface for managing Identity and Access Management (IAM) policies.
    #
    # @param version [::String, ::Symbol] The API version to connect to. Optional.
    #   Defaults to `:v2`.
    # @return [::Object] A client object for the specified version.
    #
    def self.policies version: :v2, &block
      require "google/iam/#{version.to_s.downcase}"

      package_name = Google::Iam
                     .constants
                     .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                     .first
      service_module = Google::Iam.const_get(package_name).const_get(:Policies)
      service_module.const_get(:Client).new(&block)
    end
  end
end

helper_path = ::File.join __dir__, "iam", "helpers.rb"
require "google/iam/helpers" if ::File.file? helper_path
