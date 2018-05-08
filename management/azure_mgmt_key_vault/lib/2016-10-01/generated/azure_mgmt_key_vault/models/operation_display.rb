# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::Mgmt::V2016_10_01
  module Models
    #
    # Display metadata associated with the operation.
    #
    class OperationDisplay

      include MsRestAzure

      # @return [String] Service provider: Microsoft Key Vault.
      attr_accessor :provider

      # @return [String] Resource on which the operation is performed etc.
      attr_accessor :resource

      # @return [String] Type of operation: get, read, delete, etc.
      attr_accessor :operation

      # @return [String] Decription of operation.
      attr_accessor :description


      #
      # Mapper for OperationDisplay class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Operation_display',
          type: {
            name: 'Composite',
            class_name: 'OperationDisplay',
            model_properties: {
              provider: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provider',
                type: {
                  name: 'String'
                }
              },
              resource: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resource',
                type: {
                  name: 'String'
                }
              },
              operation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end