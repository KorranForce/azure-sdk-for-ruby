# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Represents information about an operation in a terminal state (Completed
    # or Faulted).
    #
    class InvokeDataLossResult

      include MsRestAzure

      # @return [Integer] If OperationState is Completed, this is 0.  If
      # OperationState is Faulted, this is an error code indicating the reason.
      attr_accessor :error_code

      # @return [SelectedPartition] This class returns information about the
      # partition that the user-induced operation acted upon.
      attr_accessor :selected_partition


      #
      # Mapper for InvokeDataLossResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InvokeDataLossResult',
          type: {
            name: 'Composite',
            class_name: 'InvokeDataLossResult',
            model_properties: {
              error_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ErrorCode',
                type: {
                  name: 'Number'
                }
              },
              selected_partition: {
                client_side_validation: true,
                required: false,
                serialized_name: 'SelectedPartition',
                type: {
                  name: 'Composite',
                  class_name: 'SelectedPartition'
                }
              }
            }
          }
        }
      end
    end
  end
end
