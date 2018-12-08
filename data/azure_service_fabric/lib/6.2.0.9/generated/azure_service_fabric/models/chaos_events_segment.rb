# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Contains the list of Chaos events and the continuation token to get the
    # next segment.
    #
    class ChaosEventsSegment

      include MsRestAzure

      # @return [String] The continuation token parameter is used to obtain
      # next set of results. The continuation token is included in the response
      # of the API when the results from the system do not fit in a single
      # response. When this value is passed to the next API call, the API
      # returns next set of results. If there are no further results then the
      # continuation token is not included in the response.
      attr_accessor :continuation_token

      # @return [Array<ChaosEventWrapper>] List of Chaos events that meet the
      # user-supplied criteria.
      attr_accessor :history


      #
      # Mapper for ChaosEventsSegment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ChaosEventsSegment',
          type: {
            name: 'Composite',
            class_name: 'ChaosEventsSegment',
            model_properties: {
              continuation_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ContinuationToken',
                type: {
                  name: 'String'
                }
              },
              history: {
                client_side_validation: true,
                required: false,
                serialized_name: 'History',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ChaosEventWrapperElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ChaosEventWrapper'
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
