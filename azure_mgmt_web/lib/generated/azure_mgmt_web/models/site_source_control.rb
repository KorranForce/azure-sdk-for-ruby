# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Describes the source control configuration for web app
    #
    class SiteSourceControl < MsRestAzure::Resource

      include MsRestAzure

      # @return [String] Repository or source control url
      attr_accessor :repo_url

      # @return [String] Name of branch to use for deployment
      attr_accessor :branch

      # @return [Boolean] Whether to manual or continuous integration
      attr_accessor :is_manual_integration

      # @return [Boolean] Whether to manual or continuous integration
      attr_accessor :deployment_rollback_enabled

      # @return [Boolean] Mercurial or Git repository type
      attr_accessor :is_mercurial


      #
      # Mapper for SiteSourceControl class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SiteSourceControl',
          type: {
            name: 'Composite',
            class_name: 'SiteSourceControl',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              repo_url: {
                required: false,
                serialized_name: 'properties.repoUrl',
                type: {
                  name: 'String'
                }
              },
              branch: {
                required: false,
                serialized_name: 'properties.branch',
                type: {
                  name: 'String'
                }
              },
              is_manual_integration: {
                required: false,
                serialized_name: 'properties.isManualIntegration',
                type: {
                  name: 'Boolean'
                }
              },
              deployment_rollback_enabled: {
                required: false,
                serialized_name: 'properties.deploymentRollbackEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              is_mercurial: {
                required: false,
                serialized_name: 'properties.isMercurial',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end