# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "google/cloud/firestore/admin/v1/version"

require "google/cloud/firestore/admin/v1/firestore_admin/credentials"
require "google/cloud/firestore/admin/v1/firestore_admin/paths"
require "google/cloud/firestore/admin/v1/firestore_admin/operations"
require "google/cloud/firestore/admin/v1/firestore_admin/client"

module Google
  module Cloud
    module Firestore
      module Admin
        module V1
          ##
          # The Cloud Firestore Admin API.
          #
          # This API provides several administrative services for Cloud Firestore.
          #
          # Project, Database, Namespace, Collection, Collection Group, and Document are
          # used as defined in the Google Cloud Firestore API.
          #
          # Operation: An Operation represents work being performed in the background.
          #
          # The index service manages Cloud Firestore indexes.
          #
          # Index creation is performed asynchronously.
          # An Operation resource is created for each such asynchronous operation.
          # The state of the operation (including any errors encountered)
          # may be queried via the Operation resource.
          #
          # The Operations collection provides a record of actions performed for the
          # specified Project (including any Operations in progress). Operations are not
          # created directly but through calls on other collections or resources.
          #
          # An Operation that is done may be deleted so that it is no longer listed as
          # part of the Operation collection. Operations are garbage collected after
          # 30 days. By default, ListOperations will only return in progress and failed
          # operations. To list completed operation, issue a ListOperations request with
          # the filter `done: true`.
          #
          # Operations are created by service `FirestoreAdmin`, but are accessed via
          # service `google.longrunning.Operations`.
          #
          # @example Load this service and instantiate a gRPC client
          #
          #     require "google/cloud/firestore/admin/v1/firestore_admin"
          #     client = ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client.new
          #
          module FirestoreAdmin
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "firestore_admin", "helpers.rb"
require "google/cloud/firestore/admin/v1/firestore_admin/helpers" if ::File.file? helper_path
