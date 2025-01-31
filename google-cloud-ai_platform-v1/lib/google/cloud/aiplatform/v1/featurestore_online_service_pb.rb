# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/featurestore_online_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/feature_selector_pb'
require 'google/cloud/aiplatform/v1/types_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/featurestore_online_service.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.WriteFeatureValuesRequest" do
      optional :entity_type, :string, 1
      repeated :payloads, :message, 2, "google.cloud.aiplatform.v1.WriteFeatureValuesPayload"
    end
    add_message "google.cloud.aiplatform.v1.WriteFeatureValuesPayload" do
      optional :entity_id, :string, 1
      map :feature_values, :string, :message, 2, "google.cloud.aiplatform.v1.FeatureValue"
    end
    add_message "google.cloud.aiplatform.v1.WriteFeatureValuesResponse" do
    end
    add_message "google.cloud.aiplatform.v1.ReadFeatureValuesRequest" do
      optional :entity_type, :string, 1
      optional :entity_id, :string, 2
      optional :feature_selector, :message, 3, "google.cloud.aiplatform.v1.FeatureSelector"
    end
    add_message "google.cloud.aiplatform.v1.ReadFeatureValuesResponse" do
      optional :header, :message, 1, "google.cloud.aiplatform.v1.ReadFeatureValuesResponse.Header"
      optional :entity_view, :message, 2, "google.cloud.aiplatform.v1.ReadFeatureValuesResponse.EntityView"
    end
    add_message "google.cloud.aiplatform.v1.ReadFeatureValuesResponse.FeatureDescriptor" do
      optional :id, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.ReadFeatureValuesResponse.Header" do
      optional :entity_type, :string, 1
      repeated :feature_descriptors, :message, 2, "google.cloud.aiplatform.v1.ReadFeatureValuesResponse.FeatureDescriptor"
    end
    add_message "google.cloud.aiplatform.v1.ReadFeatureValuesResponse.EntityView" do
      optional :entity_id, :string, 1
      repeated :data, :message, 2, "google.cloud.aiplatform.v1.ReadFeatureValuesResponse.EntityView.Data"
    end
    add_message "google.cloud.aiplatform.v1.ReadFeatureValuesResponse.EntityView.Data" do
      oneof :data do
        optional :value, :message, 1, "google.cloud.aiplatform.v1.FeatureValue"
        optional :values, :message, 2, "google.cloud.aiplatform.v1.FeatureValueList"
      end
    end
    add_message "google.cloud.aiplatform.v1.StreamingReadFeatureValuesRequest" do
      optional :entity_type, :string, 1
      repeated :entity_ids, :string, 2
      optional :feature_selector, :message, 3, "google.cloud.aiplatform.v1.FeatureSelector"
    end
    add_message "google.cloud.aiplatform.v1.FeatureValue" do
      optional :metadata, :message, 14, "google.cloud.aiplatform.v1.FeatureValue.Metadata"
      oneof :value do
        optional :bool_value, :bool, 1
        optional :double_value, :double, 2
        optional :int64_value, :int64, 5
        optional :string_value, :string, 6
        optional :bool_array_value, :message, 7, "google.cloud.aiplatform.v1.BoolArray"
        optional :double_array_value, :message, 8, "google.cloud.aiplatform.v1.DoubleArray"
        optional :int64_array_value, :message, 11, "google.cloud.aiplatform.v1.Int64Array"
        optional :string_array_value, :message, 12, "google.cloud.aiplatform.v1.StringArray"
        optional :bytes_value, :bytes, 13
      end
    end
    add_message "google.cloud.aiplatform.v1.FeatureValue.Metadata" do
      optional :generate_time, :message, 1, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.aiplatform.v1.FeatureValueList" do
      repeated :values, :message, 1, "google.cloud.aiplatform.v1.FeatureValue"
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        WriteFeatureValuesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.WriteFeatureValuesRequest").msgclass
        WriteFeatureValuesPayload = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.WriteFeatureValuesPayload").msgclass
        WriteFeatureValuesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.WriteFeatureValuesResponse").msgclass
        ReadFeatureValuesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ReadFeatureValuesRequest").msgclass
        ReadFeatureValuesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ReadFeatureValuesResponse").msgclass
        ReadFeatureValuesResponse::FeatureDescriptor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ReadFeatureValuesResponse.FeatureDescriptor").msgclass
        ReadFeatureValuesResponse::Header = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ReadFeatureValuesResponse.Header").msgclass
        ReadFeatureValuesResponse::EntityView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ReadFeatureValuesResponse.EntityView").msgclass
        ReadFeatureValuesResponse::EntityView::Data = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ReadFeatureValuesResponse.EntityView.Data").msgclass
        StreamingReadFeatureValuesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.StreamingReadFeatureValuesRequest").msgclass
        FeatureValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FeatureValue").msgclass
        FeatureValue::Metadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FeatureValue.Metadata").msgclass
        FeatureValueList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FeatureValueList").msgclass
      end
    end
  end
end
