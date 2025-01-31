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

# [START datalineage_v1_generated_Lineage_BatchSearchLinkProcesses_sync]
require "google/cloud/data_catalog/lineage/v1"

##
# Example demonstrating basic usage of
# Google::Cloud::DataCatalog::Lineage::V1::Lineage::Client#batch_search_link_processes
#
def batch_search_link_processes
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::DataCatalog::Lineage::V1::Lineage::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::DataCatalog::Lineage::V1::BatchSearchLinkProcessesRequest.new

  # Call the batch_search_link_processes method.
  result = client.batch_search_link_processes request

  # The returned object is of type Gapic::PagedEnumerable. You can
  # iterate over all elements by calling #each, and the enumerable
  # will lazily make API calls to fetch subsequent pages. Other
  # methods are also available for managing paging directly.
  result.each do |response|
    # Each element is of type ::Google::Cloud::DataCatalog::Lineage::V1::ProcessLinks.
    p response
  end
end
# [END datalineage_v1_generated_Lineage_BatchSearchLinkProcesses_sync]
