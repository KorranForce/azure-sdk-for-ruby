# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Definition of the schedule.
    #
    class Schedule

      include MsRestAzure

      # @return [String] Gets or sets the id of the resource.
      attr_accessor :id

      # @return [String] Gets or sets the name of the schedule.
      attr_accessor :name

      # @return [DateTime] Gets or sets the start time of the schedule.
      attr_accessor :start_time

      # @return [Float] Gets the start time's offset in minutes.
      attr_accessor :start_time_offset_minutes

      # @return [DateTime] Gets or sets the end time of the schedule.
      attr_accessor :expiry_time

      # @return [Float] Gets or sets the expiry time's offset in minutes.
      attr_accessor :expiry_time_offset_minutes

      # @return [Boolean] Gets or sets a value indicating whether this schedule
      # is enabled. Default value: false .
      attr_accessor :is_enabled

      # @return [DateTime] Gets or sets the next run time of the schedule.
      attr_accessor :next_run

      # @return [Float] Gets or sets the next run time's offset in minutes.
      attr_accessor :next_run_offset_minutes

      # @return Gets or sets the interval of the schedule.
      attr_accessor :interval

      # @return [ScheduleFrequency] Gets or sets the frequency of the schedule.
      # Possible values include: 'OneTime', 'Day', 'Hour', 'Week', 'Month'
      attr_accessor :frequency

      # @return [String] Gets or sets the time zone of the schedule.
      attr_accessor :time_zone

      # @return [AdvancedSchedule] Gets or sets the advanced schedule.
      attr_accessor :advanced_schedule

      # @return [DateTime] Gets or sets the creation time.
      attr_accessor :creation_time

      # @return [DateTime] Gets or sets the last modified time.
      attr_accessor :last_modified_time

      # @return [String] Gets or sets the description.
      attr_accessor :description


      #
      # Mapper for Schedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Schedule',
          type: {
            name: 'Composite',
            class_name: 'Schedule',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              start_time_offset_minutes: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.startTimeOffsetMinutes',
                type: {
                  name: 'Double'
                }
              },
              expiry_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.expiryTime',
                type: {
                  name: 'DateTime'
                }
              },
              expiry_time_offset_minutes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.expiryTimeOffsetMinutes',
                type: {
                  name: 'Double'
                }
              },
              is_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isEnabled',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              next_run: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.nextRun',
                type: {
                  name: 'DateTime'
                }
              },
              next_run_offset_minutes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.nextRunOffsetMinutes',
                type: {
                  name: 'Double'
                }
              },
              interval: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.interval',
                type: {
                  name: 'Object'
                }
              },
              frequency: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.frequency',
                type: {
                  name: 'String'
                }
              },
              time_zone: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.timeZone',
                type: {
                  name: 'String'
                }
              },
              advanced_schedule: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.advancedSchedule',
                type: {
                  name: 'Composite',
                  class_name: 'AdvancedSchedule'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
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