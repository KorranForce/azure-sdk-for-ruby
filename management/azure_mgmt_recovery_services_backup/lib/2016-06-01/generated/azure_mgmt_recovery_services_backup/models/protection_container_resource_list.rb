# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_06_01
  module Models
    #
    # The list of ProtectionContainer resources.
    #
    class ProtectionContainerResourceList < ResourceList

      include MsRestAzure

      # @return [Array<ProtectionContainerResource>] The list of resources.
      attr_accessor :value


      #
      # Mapper for ProtectionContainerResourceList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProtectionContainerResourceList',
          type: {
            name: 'Composite',
            class_name: 'ProtectionContainerResourceList',
            model_properties: {
              next_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextLink',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ProtectionContainerResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ProtectionContainerResource'
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
