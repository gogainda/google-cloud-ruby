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

require "google/cloud/filestore/v1/version"

require "google/cloud/filestore/v1/cloud_filestore_manager/credentials"
require "google/cloud/filestore/v1/cloud_filestore_manager/paths"
require "google/cloud/filestore/v1/cloud_filestore_manager/operations"
require "google/cloud/filestore/v1/cloud_filestore_manager/client"

module Google
  module Cloud
    module Filestore
      module V1
        ##
        # Configures and manages Cloud Filestore resources.
        #
        # Cloud Filestore Manager v1.
        #
        # The `file.googleapis.com` service implements the Cloud Filestore API and
        # defines the following resource model for managing instances:
        # * The service works with a collection of cloud projects, named: `/projects/*`
        # * Each project has a collection of available locations, named: `/locations/*`
        # * Each location has a collection of instances and backups, named:
        # `/instances/*` and `/backups/*` respectively.
        # * As such, Cloud Filestore instances are resources of the form:
        #   `/projects/{project_number}/locations/{location_id}/instances/{instance_id}`
        #   and backups are resources of the form:
        #   `/projects/{project_number}/locations/{location_id}/backup/{backup_id}`
        #
        # Note that location_id must be a GCP `zone` for instances and but to a GCP
        # `region` for backups; for example:
        # * `projects/12345/locations/us-central1-c/instances/my-filestore`
        # * `projects/12345/locations/us-central1/backups/my-backup`
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/filestore/v1/cloud_filestore_manager"
        #     client = ::Google::Cloud::Filestore::V1::CloudFilestoreManager::Client.new
        #
        module CloudFilestoreManager
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "cloud_filestore_manager", "helpers.rb"
require "google/cloud/filestore/v1/cloud_filestore_manager/helpers" if ::File.file? helper_path
