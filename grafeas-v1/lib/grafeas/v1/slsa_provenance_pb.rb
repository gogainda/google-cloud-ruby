# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: grafeas/v1/slsa_provenance.proto

require 'google/protobuf/any_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("grafeas/v1/slsa_provenance.proto", :syntax => :proto3) do
    add_message "grafeas.v1.SlsaProvenance" do
      optional :builder, :message, 1, "grafeas.v1.SlsaProvenance.SlsaBuilder"
      optional :recipe, :message, 2, "grafeas.v1.SlsaProvenance.SlsaRecipe"
      optional :metadata, :message, 3, "grafeas.v1.SlsaProvenance.SlsaMetadata"
      repeated :materials, :message, 4, "grafeas.v1.SlsaProvenance.Material"
    end
    add_message "grafeas.v1.SlsaProvenance.SlsaRecipe" do
      optional :type, :string, 1
      optional :defined_in_material, :int64, 2
      optional :entry_point, :string, 3
      optional :arguments, :message, 4, "google.protobuf.Any"
      optional :environment, :message, 5, "google.protobuf.Any"
    end
    add_message "grafeas.v1.SlsaProvenance.SlsaCompleteness" do
      optional :arguments, :bool, 1
      optional :environment, :bool, 2
      optional :materials, :bool, 3
    end
    add_message "grafeas.v1.SlsaProvenance.SlsaMetadata" do
      optional :build_invocation_id, :string, 1
      optional :build_started_on, :message, 2, "google.protobuf.Timestamp"
      optional :build_finished_on, :message, 3, "google.protobuf.Timestamp"
      optional :completeness, :message, 4, "grafeas.v1.SlsaProvenance.SlsaCompleteness"
      optional :reproducible, :bool, 5
    end
    add_message "grafeas.v1.SlsaProvenance.SlsaBuilder" do
      optional :id, :string, 1
    end
    add_message "grafeas.v1.SlsaProvenance.Material" do
      optional :uri, :string, 1
      map :digest, :string, :string, 2
    end
  end
end

module Grafeas
  module V1
    SlsaProvenance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.SlsaProvenance").msgclass
    SlsaProvenance::SlsaRecipe = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.SlsaProvenance.SlsaRecipe").msgclass
    SlsaProvenance::SlsaCompleteness = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.SlsaProvenance.SlsaCompleteness").msgclass
    SlsaProvenance::SlsaMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.SlsaProvenance.SlsaMetadata").msgclass
    SlsaProvenance::SlsaBuilder = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.SlsaProvenance.SlsaBuilder").msgclass
    SlsaProvenance::Material = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.SlsaProvenance.Material").msgclass
  end
end