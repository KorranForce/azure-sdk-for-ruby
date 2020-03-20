# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2019_11_09
  module Models
    #
    # The list Kusto database principals operation response.
    #
    class FollowerDatabaseListResult

      include MsRestAzure

      # @return [Array<FollowerDatabaseDefinition>] The list of follower
      # database result.
      attr_accessor :value


      #
      # Mapper for FollowerDatabaseListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FollowerDatabaseListResult',
          type: {
            name: 'Composite',
            class_name: 'FollowerDatabaseListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FollowerDatabaseDefinitionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FollowerDatabaseDefinition'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end