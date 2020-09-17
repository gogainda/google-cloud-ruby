# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/bigquery/reservation/v1/reservation.proto for package 'google.cloud.bigquery.reservation.v1'
# Original file comments:
# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/bigquery/reservation/v1/reservation_pb'

module Google
  module Cloud
    module Bigquery
      module Reservation
        module V1
          module ReservationService
            # This API allows users to manage their flat-rate BigQuery reservations.
            #
            # A reservation provides computational resource guarantees, in the form of
            # [slots](https://cloud.google.com/bigquery/docs/slots), to users. A slot is a
            # unit of computational power in BigQuery, and serves as the basic unit of
            # parallelism. In a scan of a multi-partitioned table, a single slot operates
            # on a single partition of the table. A reservation resource exists as a child
            # resource of the admin project and location, e.g.:
            #   `projects/myproject/locations/US/reservations/reservationName`.
            #
            # A capacity commitment is a way to purchase compute capacity for BigQuery jobs
            # (in the form of slots) with some committed period of usage. A capacity
            # commitment resource exists as a child resource of the admin project and
            # location, e.g.:
            #   `projects/myproject/locations/US/capacityCommitments/id`.
            class Service

              include GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.cloud.bigquery.reservation.v1.ReservationService'

              # Creates a new reservation resource.
              rpc :CreateReservation, ::Google::Cloud::Bigquery::Reservation::V1::CreateReservationRequest, ::Google::Cloud::Bigquery::Reservation::V1::Reservation
              # Lists all the reservations for the project in the specified location.
              rpc :ListReservations, ::Google::Cloud::Bigquery::Reservation::V1::ListReservationsRequest, ::Google::Cloud::Bigquery::Reservation::V1::ListReservationsResponse
              # Returns information about the reservation.
              rpc :GetReservation, ::Google::Cloud::Bigquery::Reservation::V1::GetReservationRequest, ::Google::Cloud::Bigquery::Reservation::V1::Reservation
              # Deletes a reservation.
              # Returns `google.rpc.Code.FAILED_PRECONDITION` when reservation has
              # assignments.
              rpc :DeleteReservation, ::Google::Cloud::Bigquery::Reservation::V1::DeleteReservationRequest, ::Google::Protobuf::Empty
              # Updates an existing reservation resource.
              rpc :UpdateReservation, ::Google::Cloud::Bigquery::Reservation::V1::UpdateReservationRequest, ::Google::Cloud::Bigquery::Reservation::V1::Reservation
              # Creates a new capacity commitment resource.
              rpc :CreateCapacityCommitment, ::Google::Cloud::Bigquery::Reservation::V1::CreateCapacityCommitmentRequest, ::Google::Cloud::Bigquery::Reservation::V1::CapacityCommitment
              # Lists all the capacity commitments for the admin project.
              rpc :ListCapacityCommitments, ::Google::Cloud::Bigquery::Reservation::V1::ListCapacityCommitmentsRequest, ::Google::Cloud::Bigquery::Reservation::V1::ListCapacityCommitmentsResponse
              # Returns information about the capacity commitment.
              rpc :GetCapacityCommitment, ::Google::Cloud::Bigquery::Reservation::V1::GetCapacityCommitmentRequest, ::Google::Cloud::Bigquery::Reservation::V1::CapacityCommitment
              # Deletes a capacity commitment. Attempting to delete capacity commitment
              # before its commitment_end_time will fail with the error code
              # `google.rpc.Code.FAILED_PRECONDITION`.
              rpc :DeleteCapacityCommitment, ::Google::Cloud::Bigquery::Reservation::V1::DeleteCapacityCommitmentRequest, ::Google::Protobuf::Empty
              # Updates an existing capacity commitment.
              #
              # Only `plan` and `renewal_plan` fields can be updated.
              #
              # Plan can only be changed to a plan of a longer commitment period.
              # Attempting to change to a plan with shorter commitment period will fail
              # with the error code `google.rpc.Code.FAILED_PRECONDITION`.
              rpc :UpdateCapacityCommitment, ::Google::Cloud::Bigquery::Reservation::V1::UpdateCapacityCommitmentRequest, ::Google::Cloud::Bigquery::Reservation::V1::CapacityCommitment
              # Splits capacity commitment to two commitments of the same plan and
              # `commitment_end_time`.
              #
              # A common use case is to enable downgrading commitments.
              #
              # For example, in order to downgrade from 10000 slots to 8000, you might
              # split a 10000 capacity commitment into commitments of 2000 and 8000. Then,
              # you would change the plan of the first one to `FLEX` and then delete it.
              rpc :SplitCapacityCommitment, ::Google::Cloud::Bigquery::Reservation::V1::SplitCapacityCommitmentRequest, ::Google::Cloud::Bigquery::Reservation::V1::SplitCapacityCommitmentResponse
              # Merges capacity commitments of the same plan into a single commitment.
              #
              # The resulting capacity commitment has the greater commitment_end_time
              # out of the to-be-merged capacity commitments.
              #
              # Attempting to merge capacity commitments of different plan will fail
              # with the error code `google.rpc.Code.FAILED_PRECONDITION`.
              rpc :MergeCapacityCommitments, ::Google::Cloud::Bigquery::Reservation::V1::MergeCapacityCommitmentsRequest, ::Google::Cloud::Bigquery::Reservation::V1::CapacityCommitment
              # Creates an assignment object which allows the given project to submit jobs
              # of a certain type using slots from the specified reservation.
              #
              # Currently a
              # resource (project, folder, organization) can only have one assignment per
              # each (job_type, location) combination, and that reservation will be used
              # for all jobs of the matching type.
              #
              # Different assignments can be created on different levels of the
              # projects, folders or organization hierarchy.  During query execution,
              # the assignment is looked up at the project, folder and organization levels
              # in that order. The first assignment found is applied to the query.
              #
              # When creating assignments, it does not matter if other assignments exist at
              # higher levels.
              #
              # Example:
              #
              # * The organization `organizationA` contains two projects, `project1`
              #   and `project2`.
              # * Assignments for all three entities (`organizationA`, `project1`, and
              #   `project2`) could all be created and mapped to the same or different
              #   reservations.
              #
              # Returns `google.rpc.Code.PERMISSION_DENIED` if user does not have
              # 'bigquery.admin' permissions on the project using the reservation
              # and the project that owns this reservation.
              #
              # Returns `google.rpc.Code.INVALID_ARGUMENT` when location of the assignment
              # does not match location of the reservation.
              rpc :CreateAssignment, ::Google::Cloud::Bigquery::Reservation::V1::CreateAssignmentRequest, ::Google::Cloud::Bigquery::Reservation::V1::Assignment
              # Lists assignments.
              #
              # Only explicitly created assignments will be returned.
              #
              # Example:
              #
              # * Organization `organizationA` contains two projects, `project1` and
              #   `project2`.
              # * Reservation `res1` exists and was created previously.
              # * CreateAssignment was used previously to define the following
              #   associations between entities and reservations: `<organizationA, res1>`
              #   and `<project1, res1>`
              #
              # In this example, ListAssignments will just return the above two assignments
              # for reservation `res1`, and no expansion/merge will happen.
              #
              # The wildcard "-" can be used for
              # reservations in the request. In that case all assignments belongs to the
              # specified project and location will be listed.
              #
              # **Note** "-" cannot be used for projects nor locations.
              rpc :ListAssignments, ::Google::Cloud::Bigquery::Reservation::V1::ListAssignmentsRequest, ::Google::Cloud::Bigquery::Reservation::V1::ListAssignmentsResponse
              # Deletes a assignment. No expansion will happen.
              #
              # Example:
              #
              # * Organization `organizationA` contains two projects, `project1` and
              #   `project2`.
              # * Reservation `res1` exists and was created previously.
              # * CreateAssignment was used previously to define the following
              #   associations between entities and reservations: `<organizationA, res1>`
              #   and `<project1, res1>`
              #
              # In this example, deletion of the `<organizationA, res1>` assignment won't
              # affect the other assignment `<project1, res1>`. After said deletion,
              # queries from `project1` will still use `res1` while queries from
              # `project2` will switch to use on-demand mode.
              rpc :DeleteAssignment, ::Google::Cloud::Bigquery::Reservation::V1::DeleteAssignmentRequest, ::Google::Protobuf::Empty
              # Looks up assignments for a specified resource for a particular region.
              # If the request is about a project:
              #
              # 1. Assignments created on the project will be returned if they exist.
              # 2. Otherwise assignments created on the closest ancestor will be
              #    returned.
              # 3. Assignments for different JobTypes will all be returned.
              #
              # The same logic applies if the request is about a folder.
              #
              # If the request is about an organization, then assignments created on the
              # organization will be returned (organization doesn't have ancestors).
              #
              # Comparing to ListAssignments, there are some behavior
              # differences:
              #
              # 1. permission on the assignee will be verified in this API.
              # 2. Hierarchy lookup (project->folder->organization) happens in this API.
              # 3. Parent here is `projects/*/locations/*`, instead of
              #    `projects/*/locations/*reservations/*`.
              #
              # **Note** "-" cannot be used for projects
              # nor locations.
              rpc :SearchAssignments, ::Google::Cloud::Bigquery::Reservation::V1::SearchAssignmentsRequest, ::Google::Cloud::Bigquery::Reservation::V1::SearchAssignmentsResponse
              # Moves an assignment under a new reservation.
              #
              # This differs from removing an existing assignment and recreating a new one
              # by providing a transactional change that ensures an assignee always has an
              # associated reservation.
              rpc :MoveAssignment, ::Google::Cloud::Bigquery::Reservation::V1::MoveAssignmentRequest, ::Google::Cloud::Bigquery::Reservation::V1::Assignment
              # Retrieves a BI reservation.
              rpc :GetBiReservation, ::Google::Cloud::Bigquery::Reservation::V1::GetBiReservationRequest, ::Google::Cloud::Bigquery::Reservation::V1::BiReservation
              # Updates a BI reservation.
              #
              # Only fields specified in the `field_mask` are updated.
              #
              # A singleton BI reservation always exists with default size 0.
              # In order to reserve BI capacity it needs to be updated to an amount
              # greater than 0. In order to release BI capacity reservation size
              # must be set to 0.
              rpc :UpdateBiReservation, ::Google::Cloud::Bigquery::Reservation::V1::UpdateBiReservationRequest, ::Google::Cloud::Bigquery::Reservation::V1::BiReservation
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
