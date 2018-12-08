# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # The list of replicas in the cluster for a given partition. The list is
    # paged when all of the results cannot fit in a single message. The next
    # set of results can be obtained by executing the same query with the
    # continuation token provided in this list.
    #
    class PagedReplicaInfoList

      include MsRestAzure

      # @return [String] The continuation token parameter is used to obtain
      # next set of results. The continuation token is included in the response
      # of the API when the results from the system do not fit in a single
      # response. When this value is passed to the next API call, the API
      # returns next set of results. If there are no further results, then the
      # continuation token is not included in the response.
      attr_accessor :continuation_token

      # @return [Array<ReplicaInfo>] List of replica information.
      attr_accessor :items


      #
      # Mapper for PagedReplicaInfoList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PagedReplicaInfoList',
          type: {
            name: 'Composite',
            class_name: 'PagedReplicaInfoList',
            model_properties: {
              continuation_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ContinuationToken',
                type: {
                  name: 'String'
                }
              },
              items: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Items',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ReplicaInfoElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'ServiceKind',
                        uber_parent: 'ReplicaInfo',
                        class_name: 'ReplicaInfo'
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
