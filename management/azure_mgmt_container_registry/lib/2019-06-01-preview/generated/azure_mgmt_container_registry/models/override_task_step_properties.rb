# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_06_01_preview
  module Models
    #
    # Model object.
    #
    #
    class OverrideTaskStepProperties

      include MsRestAzure

      # @return [String] The source context against which run has to be queued.
      attr_accessor :context_path

      # @return [String] The file against which run has to be queued.
      attr_accessor :file

      # @return [Array<Argument>] Gets or sets the collection of override
      # arguments to be used when
      # executing a build step.
      attr_accessor :arguments

      # @return [String] The name of the target build stage for the docker
      # build.
      attr_accessor :target

      # @return [Array<SetValue>] The collection of overridable values that can
      # be passed when running a Task.
      attr_accessor :values

      # @return [String] Base64 encoded update trigger token that will be
      # attached with the base image trigger webhook.
      attr_accessor :update_trigger_token


      #
      # Mapper for OverrideTaskStepProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OverrideTaskStepProperties',
          type: {
            name: 'Composite',
            class_name: 'OverrideTaskStepProperties',
            model_properties: {
              context_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contextPath',
                type: {
                  name: 'String'
                }
              },
              file: {
                client_side_validation: true,
                required: false,
                serialized_name: 'file',
                type: {
                  name: 'String'
                }
              },
              arguments: {
                client_side_validation: true,
                required: false,
                serialized_name: 'arguments',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArgumentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Argument'
                      }
                  }
                }
              },
              target: {
                client_side_validation: true,
                required: false,
                serialized_name: 'target',
                type: {
                  name: 'String'
                }
              },
              values: {
                client_side_validation: true,
                required: false,
                serialized_name: 'values',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SetValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SetValue'
                      }
                  }
                }
              },
              update_trigger_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'updateTriggerToken',
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
