# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Describes the properties of a secret resource whose value is provided
    # explicitly as plaintext. The secret resource may have multiple values,
    # each being uniquely versioned. The secret value of each version is stored
    # encrypted, and delivered as plaintext into the context of applications
    # referencing it.
    #
    class InlinedValueSecretResourceProperties < SecretResourceProperties

      include MsRestAzure


      def initialize
        @kind = "inlinedValue"
      end

      attr_accessor :kind


      #
      # Mapper for InlinedValueSecretResourceProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'inlinedValue',
          type: {
            name: 'Composite',
            class_name: 'InlinedValueSecretResourceProperties',
            model_properties: {
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
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
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              status_details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'statusDetails',
                type: {
                  name: 'String'
                }
              },
              content_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contentType',
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
