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

require "google/cloud/video/transcoder/v1/version"

require "google/cloud/video/transcoder/v1/transcoder_service/credentials"
require "google/cloud/video/transcoder/v1/transcoder_service/paths"
require "google/cloud/video/transcoder/v1/transcoder_service/client"

module Google
  module Cloud
    module Video
      module Transcoder
        module V1
          ##
          # Using the Transcoder API, you can queue asynchronous jobs for transcoding
          # media into various output formats. Output formats may include different
          # streaming standards such as HTTP Live Streaming (HLS) and Dynamic Adaptive
          # Streaming over HTTP (DASH). You can also customize jobs using advanced
          # features such as Digital Rights Management (DRM), audio equalization, content
          # concatenation, and digital ad-stitch ready content generation.
          #
          # @example Load this service and instantiate a gRPC client
          #
          #     require "google/cloud/video/transcoder/v1/transcoder_service"
          #     client = ::Google::Cloud::Video::Transcoder::V1::TranscoderService::Client.new
          #
          module TranscoderService
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "transcoder_service", "helpers.rb"
require "google/cloud/video/transcoder/v1/transcoder_service/helpers" if ::File.file? helper_path
